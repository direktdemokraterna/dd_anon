<?

class db {
	
	public static function connect (){

		$data_source = "mysql:host=" . DB_ANON_HOST . ";dbname=" . DB_ANON_NAME;
		$conn = new PDO($data_source, DB_ANON_USERNAME, DB_ANON_PASSWORD);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

		return $conn;

	}

	// returns a result array from a select query
	public static function select ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		return $stmt->fetchAll();

	}

	// returns single row from a select query
	public static function select_single_row ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		$result = $stmt->fetchAll();
		return $result[0];

	}

	// returns single value from a select query
	public static function select_single_value ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		$result = $stmt->fetchAll();
		$row = $result[0];

		return $row[0];

	}

	// executes an insert query, returns insert_id
	public static function insert ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		return $db->lastInsertId();

	}

	// executes an update query, returns number of affected rows
	public static function update ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		return $stmt->rowCount();

	}

	// executes multiple similar delete queries, takes id values from array, returns number of affected rows
	public static function update_from_array ($query, $id_array){

		$db = self::connect();

		$stmt = $db->prepare($query);

		$counter = 0;
		foreach($id_array as $id_value){
			$values = Array($id_value);
			$stmt->execute($values);
			$counter++;
		}
		
		return $counter;

	}

	// executes a delete query, returns number of affected rows
	public static function delete ($query, $values){

		$db = self::connect();

		$stmt = $db->prepare($query);
		$stmt->execute($values);

		return $stmt->rowCount();

	}

	// inserts multiple rows from single query, uses 1 fixed variable and 1 array variable that changes for each row, returns number of affected rows
	public static function insert_multiple_rows_with_two_variables ($query, $variable_array, $second_variable){

		$db = self::connect();

		$stmt = $db->prepare($query);

		$counter = 0;
		foreach($variable_array as $first_variable){
			$values = Array($first_variable, $second_variable);
			$stmt->execute($values);
			$counter = $counter + $stmt->rowCount();
		}
		
		return $counter;

	}

	public static function insert_ignore_from_array ($query, $variable_array, $second_variable){

		$db = self::connect();

		$stmt = $db->prepare($query);

		$counter = 0;
		foreach($variable_array as $first_variable){
			$values = Array($first_variable, $second_variable, $first_variable, $second_variable);
			$stmt->execute($values);
			$counter = $counter + $stmt->rowCount();
		}
		
		return $counter;

	}

	// inserts new row if it does not already exists
	public static function insert_ignore ($db_table, $columns, $values){

		$db = self::connect();

		$select_statement = "";
		foreach ($columns as $value){
			$select_statement = $select_statement . " and " . $value . " = ?";
		}
		$select_statement = trim($select_statement, " and");

		$query = "select id from " . $db_table . " where " . $select_statement;
		$if_exists = self::select_single_value($query, $values);

		if(!empty($if_exists)){

			return false;

		}
		else{

			$question_marks = "";
			foreach ($columns as $value){
				$question_marks = $question_marks . ", ?";
			}
			$question_marks = trim($question_marks, ",");
			
			$query = "insert into " . $db_table . "(" . implode(",", $columns) . ") values(" . $question_marks . ")";

			return self::insert($query, $values);

		}

	}

	public static function insert_all ($query, $insert_array){

		$db = self::connect();

		$stmt = $db->prepare($query);

		$counter = 0;
		foreach($insert_array as $row){
			$values = Array($row[0]);
			$stmt->execute($values);
			$counter = $counter + $stmt->rowCount();
		}

		return $counter;

	}

}