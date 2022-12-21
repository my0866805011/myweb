<?php 
//include 'myconnect.php';
include './connected.php';
header("Access-Control-Allow-Origin: *");

if (!$conn) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL; 
    exit;
}

if (!$conn->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $conn->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {

        $m_name = $_GET['fname'];
        $m_user = $_GET['user'];
        $m_email = $_GET['email'];
        $m_phone =$_GET['phone'];
        $m_password =$_GET['password'];

        $sql="INSERT INTO `usertbl` (`id`, `name`, `user`, `email`, `phone`, `password`) VALUES (NULL, '$m_name', '$m_user', '$m_email', '$m_phone', '$m_password')";

        $result=mysqli_query($conn,$sql);
        if ($result){
			echo "true";
		} else {
			echo "false";
        }    
	} else echo "Welcome Master UNG inserdata";
   
}    
mysqli_close($conn);

?>