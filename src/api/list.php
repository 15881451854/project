<?php
    require("connect.php");

    $cat = isset($_GET["categroy"]) ? $_GET["categroy"] : null;
    $page_no = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;
    $qty = isset($_GET['qty']) ? $_GET['qty'] : 12;

    $sql = "select * from goods where";

    if($cat){
        $sql .= " categroy='$cat' and";
    }
        $sql .= " 1 = 1";

    $res = $conn->query($sql);
    $row = $res->fetch_all(MYSQLI_ASSOC);
    $row = array(
        'data'=>array_slice($row, ($page_no-1)*$qty, $qty),
        'total'=>count($row),
        'qty'=>$qty,
        'pageNo'=>$page_no*1
    );
    echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>