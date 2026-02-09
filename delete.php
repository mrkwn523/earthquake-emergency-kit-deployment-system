<?php
include("db_connect.php");

if (isset($_GET['id'])) {
    $id = (int)$_GET['id']; 
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

    $conn->query("DELETE FROM kits WHERE id = $id");


    header("Location: index.php?page=$page&deleted=1");
    exit();
}


header("Location: index.php");
exit();
?>
