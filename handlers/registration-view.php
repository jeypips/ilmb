<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$personal_infos = $con->getData("SELECT * FROM personal_infos WHERE id = $_POST[id]");

echo json_encode($personal_infos[0]);

?>