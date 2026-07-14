<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
header('Location: success.html');
exit;
}
header('Location: index.php');
exit;
?>