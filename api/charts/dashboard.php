<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$dashboard = [];

$q = $con->getData("SELECT count(id) total_population FROM personal_infos");
$dashboard['total_population'] = $q[0]['total_population'];

$q = $con->getData("SELECT count(id) total_attendance FROM personal_infos WHERE attendance = 1");
$dashboard['total_attendance'] = $q[0]['total_attendance'];

$dashboard['gender'] = [];
$q = $con->getData("SELECT count(id) total_male FROM personal_infos WHERE gender = 'Male'");
$dashboard['gender']['male'] = $q[0]['total_male'];
$q = $con->getData("SELECT count(id) total_female FROM personal_infos WHERE gender = 'Female'");
$dashboard['gender']['female'] = $q[0]['total_female'];

$q = $con->getData("SELECT count(id) total_family_head FROM personal_infos WHERE family_head = 1");
$dashboard['total_family_head'] = $q[0]['total_family_head'];

$dashboard['category'] = [];
$q = $con->getData("SELECT count(id) total_indigents FROM personal_infos WHERE category = 'Indigent'");
$dashboard['category']['indigents'] = $q[0]['total_indigents'];
$q = $con->getData("SELECT count(id) total_senior_citizens FROM personal_infos WHERE category = 'Senior'");
$dashboard['category']['senior_citizens'] = $q[0]['total_senior_citizens'];
$q = $con->getData("SELECT count(id) total_children FROM personal_infos WHERE category = 'Child'");
$dashboard['category']['children'] = $q[0]['total_children'];
$q = $con->getData("SELECT count(id) total_walkins FROM personal_infos WHERE category = 'Walk-in'");
$dashboard['category']['walkins'] = $q[0]['total_walkins'];

$dashboard['ages'] = [];
$ages = $con->getData("SELECT age FROM `personal_infos` GROUP by age");
foreach ($ages as $key => $age) {
	$q = $con->getData("SELECT count(id) total_count FROM personal_infos WHERE age = ".$age['age']);
	$dashboard['ages'][] = array(
		"label"=>($age['age']==0)?"Undefined":(string)$age['age'],
		"color"=>randomRgb(),
		"count"=>$q[0]['total_count']
	);	
}

$services = $con->getData("SELECT * FROM services");
$dashboard['services'] = [];
foreach ($services as $key => $service) {
	$q = $con->getData("SELECT count(id) total_count FROM services_availed WHERE service_id = ".$service['id']." AND service_availed = 1");
	$dashboard['services'][] = array(
		"label"=>$service['description'],
		"color"=>$service['color_code'],
		"count"=>$q[0]['total_count']
	);
};

header("Content-Type: application/json");
echo json_encode($dashboard);

function randomRgb() {
	
	$color = sprintf("#%02x%02x%02x", rand(0,255), rand(0,255), rand(0,255));	

	return $color;
	
};

?>