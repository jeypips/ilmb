<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

session_start();

require_once '../db.php';

$con = new pdo_db("services_availed");

$data = array(
	"id"=>$_POST['id'],
	"service_availed"=>($_POST['checked'])?1:0,
	"last_modified_by"=>$_SESSION['account_id']
);

$con->updateData($data,'id');

?>