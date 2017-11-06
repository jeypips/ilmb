<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$events = $con->getData("SELECT * FROM events");


foreach($events as $key => $event){
	
	$municipalities = $con->getData("SELECT id, municipality FROM municipalities WHERE municipalities.id = ".$event['town']);
	$events[$key]['town'] = $municipalities[0];
}

header("Content-Type: application/json");
echo json_encode($events);

?>