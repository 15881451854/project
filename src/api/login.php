<?php
    require("connect.php");
    $username = isset($_GET["username"]) ? $_GET["username"] : null;
    $password = isset($_GET["password"]) ? $_GET["password"] : null;

    $password = md5("$password");
    $sql = "select * from user where username = '$username' and password = '$password'";

    $result = $conn->query($sql);

    if($result->num_rows>0){
        echo "ok";
    }else{
        echo "fail";
}



?>    