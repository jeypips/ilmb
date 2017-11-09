<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

$personal_infos = $con->getData("SELECT personal_infos.id, personal_infos.personal_info_no, (SELECT events.description FROM events WHERE events.id = personal_infos.event_id) description, personal_infos.address_barangay, personal_infos.address_municipality, personal_infos.firstname, personal_infos.middlename, personal_infos.lastname FROM personal_infos");

 // Convert id to array
foreach($personal_infos as $key => $personal_info) {
	
	$personal_infos[$key]['address_barangay'] = ($personal_infos[$key]['address_barangay'] == NULL)?0:$personal_infos[$key]['address_barangay'];

	$barangay = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangays.id = ".$personal_infos[$key]['address_barangay']);
	$personal_infos[$key]['address_barangay'] = (count($barangay))?$barangay[0]:[];

	$personal_infos[$key]['address_municipality'] = ($personal_infos[$key]['address_municipality'] == NULL)?0:$personal_infos[$key]['address_municipality'];	

	$municipalities = $con->getData("SELECT id, municipality FROM municipalities WHERE municipalities.id = ".$personal_infos[$key]['address_municipality']);
	$personal_infos[$key]['address_municipality'] = (count($municipalities))?$municipalities[0]:[];
	
}


header("Content-Type: application/json");
echo json_encode($personal_infos);

?>