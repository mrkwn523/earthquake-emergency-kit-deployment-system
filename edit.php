<?php include("db_connect.php"); ?>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Kit</title>
    <link rel="stylesheet" href="styles.css">
    <script src="scripts.js" defer></script>
</head>
<body>
<?php
$id = $_GET['id'];
$sql = "SELECT * FROM kits WHERE id=$id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
?>
    <h2>Edit Emergency Kit</h2>
    <form method="POST">
        Kit Name: <input type="text" name="kit_name" value="<?php echo $row['kit_name']; ?>" required><br>
        Contents: <textarea name="contents" required><?php echo $row['contents']; ?></textarea><br>
        Location: <input type="text" name="location" value="<?php echo $row['location']; ?>"><br>
        Status: 
        <select name="status">
            <option value="Available" <?php if($row['status']=="Available") echo "selected"; ?>>Available</option>
            <option value="Deployed" <?php if($row['status']=="Deployed") echo "selected"; ?>>Deployed</option>
            <option value="Needs Restock" <?php if($row['status']=="Needs Restock") echo "selected"; ?>>Needs Restock</option>
        </select><br>
        <input type="submit" name="update" value="Update">
    </form>

    <?php
    if(isset($_POST['update'])){
        $kit_name = $_POST['kit_name'];
        $contents = $_POST['contents'];
        $location = $_POST['location'];
        $status   = $_POST['status'];

        $sql = "UPDATE kits SET kit_name='$kit_name', contents='$contents', location='$location', status='$status' WHERE id=$id";
        if($conn->query($sql) === TRUE){
            echo "Kit updated successfully! <a href='index.php'>Back to Dashboard</a>";
        } else {
            echo "Error: " . $conn->error;
        }
    }
    ?>
</body>
</html>
