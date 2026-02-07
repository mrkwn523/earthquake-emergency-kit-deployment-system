<?php
include("db_connect.php");


if(isset($_GET['id'])) {
    $id = (int)$_GET['id']; 


    $conn->query("DELETE FROM kits WHERE id = $id");
}


header("Location: index.php?deleted=1");
exit();
?>
