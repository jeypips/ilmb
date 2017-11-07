<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db("services_availed");

$services = $con->getData("SELECT * FROM services");

$profile = $con->getData("SELECT personal_info_no, CONCAT(lastname, ', ', firstname, ' ', middlename) fullname, DATE_FORMAT(birth_date,'%M %e, %Y') birth_date, age, (SELECT barangay_description FROM barangays WHERE id = address_barangay) barangay FROM personal_infos WHERE id = ".$_POST['id']);
$profile[0]['services'] = [];

foreach ($services as $service) {
	
	if (!qualifiedService($profile[0]['age'],$service)) continue;	
	$profile[0]['services'][] = array(
	
	);
	
};

header("Content-Type: application/json");
echo json_encode($profile[0]);

function qualifiedService($age,$service) {
	
	$qualifiedService = false;
	
	if ($age <= $service['max_age']) $qualifiedService = true; 
	
	return $qualifiedService;
	
};

?>