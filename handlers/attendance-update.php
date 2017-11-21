<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

session_start();

require_once '../db.php';

$con = new pdo_db("personal_infos");

$data = array(
	"id"=>$_POST['id'],
	"attendance"=>($_POST['checked'])?1:0,
);

$con->updateData($data,'id');

echo json_encode(array("attendance"=>$_POST['checked']));

?>