<?php
session_start();
require 'db.php';

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'] ?? '';
    $pass = $_POST['password'] ?? '';

    $stmt = $conn->prepare("SELECT id, password, balance, approved FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    if ($user && password_verify($pass, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        echo json_encode([
            "status" => "OK",
            "balance" => (float)$user['balance'],
            "approved" => (int)$user['approved']
        ]);
    } else {
        http_response_code(401);
        echo json_encode(["status" => "Error", "message" => "Invalid email or password"]);
    }
}
?>