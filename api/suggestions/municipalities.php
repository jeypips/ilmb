<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$municipalities = $con->getData("SELECT id, municipality FROM municipalities");

foreach ($municipalities as $key => $municipality) {
	
	$barangays = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangay_municipality = ".$municipality['id']);
	$municipalities[$key]['barangays'] = $barangays;
	
};

header("Content-Type: application/json");
echo json_encode($municipalities);

?>