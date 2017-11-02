<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

$con = new pdo_db();

//$personal_infos = $con->getData("SELECT *, (SELECT barangays.barangay_description FROM barangays WHERE barangays.id = personal_infos.address_barangay) address_barangay FROM personal_infos");
$personal_infos = $con->getData("SELECT * FROM personal_infos");

 // Convert id to array
foreach ($personal_infos as $key => $personal_info) {
	
	$barangay = $con->getData("SELECT id, barangay_description FROM barangays WHERE barangays.id = ".$personal_info['address_barangay']);
	$personal_infos[$key]['address_barangay'] = $barangay[0];
	
	$municipalities = $con->getData("SELECT id, municipality FROM municipalities WHERE municipalities.id = ".$personal_info['address_municipality']);
	$personal_infos[$key]['address_municipality'] = $municipalities[0];
}


header("Content-Type: application/json");
echo json_encode($personal_infos);

?>