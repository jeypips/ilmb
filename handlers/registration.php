<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

require_once '../classes.php';

$con = new pdo_db();

$registrationObj = new registration($con);

$id = $_POST['id'];

$account_infos = $con->getData("SELECT * FROM account_infos WHERE account_id = $_POST[account_id]");

$registration = [];


header("Content-Type: application/json");
echo json_encode($registration);

?>