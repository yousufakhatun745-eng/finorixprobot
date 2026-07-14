<?php
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = $_POST['username'] ?? '';
    $email = $_POST['email'] ?? '';
    $pass = $_POST['password'] ?? '';

    if (!empty($user) && !empty($email) && !empty($pass)) {
        $hashed_pass = password_hash($pass, PASSWORD_BCRYPT);
        $stmt = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $user, $email, $hashed_pass);

        if ($stmt->execute()) {
            echo "OK";
        } else {
            echo "Email already exists!";
        }
    } else {
        echo "All fields are required!";
    }
}
?>