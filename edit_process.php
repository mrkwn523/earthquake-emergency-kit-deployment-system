<?php
include("db_connect.php");

$id = (int)$_POST['id']; 

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $kit_name = $_POST['kit_name'];
    $location = $_POST['location'];
    $status   = $_POST['status'];

    // Update query without contents column
    $stmt = $conn->prepare("UPDATE kits SET kit_name=?, location=?, status=? WHERE id=?");
    $stmt->bind_param("sssi", $kit_name, $location, $status, $id);

    if ($stmt->execute()) {
        header("Location: index.php");
        exit;
    } else {
        echo "Error: " . $stmt->error;
    }
}
?>
