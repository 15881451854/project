<?php
    require("connect.php");
    $username = isset($_GET["username"]) ? $_GET["username"] : null;
    $password = isset($_GET["password"]) ? $_GET["password"] : null;

    $data = $conn->query("select * from user where username = '$username'");


    if($data->num_rows == 0){
        $password = md5("$password");
        // 写入数据
        $sql = "insert into user(username,password) values('$username', '$password')";
        $res = $conn->query($sql);

        if($res){
            echo "success";
        }else{
            echo "fail";
        }
    }

    if($data->num_rows != 0){
        echo "occupy";
    }

?>    