<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$personal_info = $con->getData("SELECT * FROM personal_infos");

header("Content-Type: application/json");
echo json_encode($personal_info);

?>