<?php
    require("connect.php");
    $page_no = isset($_GET['pageNo']) ? $_GET['pageNo'] : 1;
    $qty = isset($_GET['qty']) ? $_GET['qty'] : 10;
echo $qty;
    $sql = "select * from goods";
    $res = $conn->query($sql);
    $row = $res->fetch_all();

    $res = array(
        'data'=>array_slice($row, ($page_no-1)*$qty, $qty),
        // 'total'=>count($row),
        // 'qty'=>$qty,
        // 'pageNo'=>$page_no*1
    );
    echo json_encode($res,JSON_UNESCAPED_UNICODE);
?>