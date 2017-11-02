<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

require_once '../classes.php';

$con = new pdo_db();

$registrationObj = new registration($con);

$id = $_POST['id'];

$personal_infos = $con->getData("SELECT * FROM personal_infos");

$personal_infos = [];

header("Content-Type: application/json");
echo json_encode($personal_infos);

?>