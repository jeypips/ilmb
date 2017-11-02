<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$personal_infos = $con->getData("SELECT * FROM personal_infos WHERE id = $_POST[id]");

foreach($personal_infos as $key => $personal_info){
	
	$barangay = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangays.id = ".$personal_info['address_barangay']);
	$personal_infos[$key]['address_barangay'] = $barangay[0];
	
}

echo json_encode($personal_infos[0]);

?>