<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db("services_availed");

$services = $con->getData("SELECT * FROM services");

$profile = $con->getData("SELECT personal_info_no, event_id, CONCAT(lastname, ', ', firstname) fullname, DATE_FORMAT(birth_date,'%M %e, %Y') birth_date, age, (SELECT barangay_description FROM barangays WHERE id = address_barangay) barangay FROM personal_infos WHERE id = ".$_POST['id']);
$profile[0]['services'] = [];

foreach ($services as $service) {
	
	// if (!qualifiedService($profile[0]['age'],$service)) continue;
	$profile[0]['services'][] = array(
		"profile_id"=>$_POST['id'],
		"service_id"=>$service['id'],
		"event_id"=>$profile[0]['event_id']
	);
	
};

$hasServices = $con->getData("SELECT * FROM services_availed WHERE profile_id = ".$_POST['id']);

if (count($hasServices) == 0) {
	
	$con->insertDataMulti($profile[0]['services']);
	$hasServices = $con->getData("SELECT * FROM services_availed WHERE profile_id = ".$_POST['id']);	
	
};

$profile[0]['services'] = $hasServices;
foreach ($profile[0]['services'] as $key => $service) {
	
	$profile[0]['services'][$key]['service_availed'] = ($profile[0]['services'][$key]['service_availed'])?true:false;	
	
	$service_q = $con->getData("SELECT * FROM services WHERE id = ".$service['service_id']);
	
	$profile[0]['services'][$key]['description'] = $service_q[0]['description'];
	$profile[0]['services'][$key]['color'] = $service_q[0]['color'];
	$profile[0]['services'][$key]['color_code'] = (($service_q[0]['color_code']==NULL)||($service_q[0]['color_code']==""))?"c0c7e3":$service_q[0]['color_code'];
	
};

header("Content-Type: application/json");
echo json_encode($profile[0]);

function qualifiedService($age,$service) {
	
	$qualifiedService = false;
	
	if ($age <= $service['max_age']) $qualifiedService = true; 
	
	return $qualifiedService;
	
};

?>