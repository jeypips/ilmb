<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$personal_infos = $con->getData("SELECT * FROM personal_infos WHERE id = $_POST[id]");

foreach($personal_infos as $key => $personal_info) {
	
	$personal_infos[$key]['family_head'] = ($personal_infos[$key]['family_head'])?true:false; 
	$personal_infos[$key]['attendance'] = ($personal_infos[$key]['attendance'])?true:false; 
	
	$address_barangay = (isset($personal_info['address_barangay']))?$personal_info['address_barangay']:0;
	
	$barangay = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangays.id = ".$address_barangay);
	// $personal_infos[$key]['address_barangay'] = $barangay[0];
	$personal_infos[$key]['address_barangay'] = (count($barangay))?$barangay[0]:array("id"=>0,"barangay_description"=>"");

	$municipalities = $con->getData("SELECT id, municipality FROM municipalities WHERE municipalities.id = ".$personal_info['address_municipality']);
	// $personal_infos[$key]['address_municipality'] = $municipalities[0];	
	$personal_infos[$key]['address_municipality'] = (count($municipalities))?$municipalities[0]:array("id"=>0,"municipality"=>"");	
	
}

header("Content-Type: application/json");
echo json_encode($personal_infos[0]);

?>