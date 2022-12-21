<?php
	include './connected.php';
	header("Access-Control-Allow-Origin: *");
	

if (!$conn) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    
    exit;
}

if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
				
		$name = $_GET['name'];
		$user = $_GET['user'];
		$password = $_GET['password'];

		
		
		//$sql = "INSERT INTO `usertbl`(`id`, `name`, `user`, `password`) VALUES (Null,'$name','$user','$password')";
			
		//$sql = "INSERT INTO `usertbl` (`id`, `name`) VALUES (Null,'$name' )";

		//$sql="INSERT INTO `usertbl` (`id`, `name`, `user`, `password`) VALUES (NULL, '$m_name', '$m_user', '$m_password')";

		//$sql="INSERT INTO `usertbl` (`name`, `user`, `password`) VALUES ('$m_name', '$m_user', '$m_password')";
		$sql="INSERT INTO `usertbl` (`id`) VALUES (NULL)";

		$result=mysqli_query($conn,$sql);
		if ($result){
			echo "true";
		} else {
			echo "false";
		}
		 echo $name;
		 echo $user;
		 echo $password;

		
	} else echo "Welcome Master UNG inserdata";
   
}

	mysqli_close($conn);
?>