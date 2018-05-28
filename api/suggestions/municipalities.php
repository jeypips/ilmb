<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$municipalities = $con->getData("SELECT id, municipality FROM municipalities");


header("Content-Type: application/json");
echo json_encode($municipalities);

?>