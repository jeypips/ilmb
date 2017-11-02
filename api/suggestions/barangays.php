<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$barangays = $con->getData("SELECT id, barangay_description FROM barangays");

header("Content-Type: application/json");
echo json_encode($barangays);

?>