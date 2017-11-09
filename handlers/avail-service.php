<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

$con = new pdo_db("services_availed");

$data = array(
	"id"=>$_POST['id'],
	"service_availed"=>($_POST['checked'])?1:0
);

$con->updateData($data,'id');

?>