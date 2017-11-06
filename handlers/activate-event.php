<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

$con = new pdo_db("events");

$events = $con->getData("SELECT * FROM events");

foreach ($events as $i => $event) {
	
	$checked = 0;
	if ($event['id'] == $_POST['id']) $checked = ($_POST['checked'])?1:0;
	
	$data = array("id"=>$event['id'],"is_active"=>$checked);
	$con->updateData($data,'id');
	
};

?>