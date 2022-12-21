<?php 
include 'connected.php';

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {

        $name = $_GET['name'];
        $user = $_GET['user'];
        //$m_email = $_POST['email'];
        //$m_phone =$_POST['phone'];
        //$m_password =$_POST['password'];

       // $sql="INSERT INTO `usertbl` (`id`, `name`, `user`, `email`, `phone`, `password`) VALUES (NULL, '$m_name', '$m_user', '$m_email', '$m_phone', '$m_password')";

       echo $m_name ;
    $sql="INSERT INTO `usertbl` (`id`,`name`) VALUES (NULL,'$name') ;";

    $result=mysqli_query($conn,$sql);
        if ($result){
			echo "true".$name;
		} else {
			echo "false".$name;
    }
    
  

} else echo "Welcome Master UNG inserdata";
 
    
}
mysqli_close($conn);

 
?>