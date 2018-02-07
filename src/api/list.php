<?php
    require("connect.php");

    $cat = isset($_GET["categroy"]) ? $_GET["categroy"] : null;

    $sql = "select * from goods where";

    if($cat){
        $sql .= " categroy='$cat' and";
    }
        $sql .= " 1 = 1";

    $res = $conn->query($sql);
    $row = $res->fetch_all(MYSQLI_ASSOC);
    echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>