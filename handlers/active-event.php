<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

$con = new pdo_db();

$event = $con->getData("SELECT * FROM events WHERE is_active = 1");

foreach ($event as $i => $e) {
	
	$municipality = $con->getData("SELECT id, municipality FROM municipalities WHERE id = ".$e['town']);
	$barangays = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangay_municipality = ".$e['town']);
	
	$event[$i]['municipality'] = $municipality[0];
	$event[$i]['municipality']['barangays'] = $barangays;

};

echo json_encode($event[0]);

?>