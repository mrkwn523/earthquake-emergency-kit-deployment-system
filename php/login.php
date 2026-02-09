<?php
session_start();
require_once "db_connect.php";

$error = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    if (!empty($username) && !empty($password)) {

        // Prepared statement (prevents SQL injection)
        $stmt = $conn->prepare(
            "SELECT adm_user, adm_pass FROM tb_admin WHERE adm_user = ? LIMIT 1"
        );
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();

            /*
             * If your passwords are PLAIN TEXT (not recommended):
             * use: if ($password === $row['adm_pass'])
             *
             * If HASHED (recommended):
             * use: if (password_verify($password, $row['adm_pass']))
             */

            if ($password === $row['adm_pass']) {
                $_SESSION['admin'] = $row['adm_user'];
                header("Location: index.php");
                exit();
            } else {
                $error = "Invalid username or password.";
            }

        } else {
            $error = "Invalid username or password.";
        }

        $stmt->close();
    } else {
        $error = "Please fill in all fields.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="style.css">
</head>

<body class="login-page">

<header class="login-header">
    <h1>Emergency Kits System</h1>
</header>

<div class="form-container login-box">
    <h2>Admin Login</h2>

    <?php if (!empty($error)) : ?>
        <p class="error-msg"><?= htmlspecialchars($error); ?></p>
    <?php endif; ?>

    <form method="post" autocomplete="off">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required>
        </div>

        <button type="submit" name="login" class="btn-login">
            Login
        </button>
    </form>
</div>

</body>
</html>
