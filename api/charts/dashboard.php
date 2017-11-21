<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$dashboard = [];

$q = $con->getData("SELECT count(id) total_population FROM personal_infos");
$dashboard['total_population'] = $q[0]['total_population'];

// $q = $con->getData("SELECT count(id) total_attendance FROM personal_infos WHERE attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_attendance FROM personal_infos WHERE attendance = 1");
$dashboard['total_attendance'] = $q[0]['total_attendance'];

$dashboard['gender'] = [];
// $q = $con->getData("SELECT count(id) total_male FROM personal_infos WHERE gender = 'Male' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_male FROM personal_infos WHERE gender = 'Male' AND attendance = 1");
$dashboard['gender']['male'] = $q[0]['total_male'];
// $q = $con->getData("SELECT count(id) total_female FROM personal_infos WHERE gender = 'Female' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_female FROM personal_infos WHERE gender = 'Female' AND attendance = 1");
$dashboard['gender']['female'] = $q[0]['total_female'];

// $q = $con->getData("SELECT count(id) total_family_head FROM personal_infos WHERE family_head = 1 AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_family_head FROM personal_infos WHERE family_head = 1 AND attendance = 1");
$dashboard['total_family_head'] = $q[0]['total_family_head'];

$dashboard['category'] = [];
// $q = $con->getData("SELECT count(id) total_indigents FROM personal_infos WHERE category = 'Indigent' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_indigents FROM personal_infos WHERE category = 'Indigent' AND attendance = 1");
$dashboard['category']['indigents'] = $q[0]['total_indigents'];
// $q = $con->getData("SELECT count(id) total_senior_citizens FROM personal_infos WHERE category = 'Senior' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_senior_citizens FROM personal_infos WHERE category = 'Senior' AND attendance = 1");
$dashboard['category']['senior_citizens'] = $q[0]['total_senior_citizens'];
// $q = $con->getData("SELECT count(id) total_children FROM personal_infos WHERE category = 'Child' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_children FROM personal_infos WHERE category = 'Child' AND attendance = 1");
$dashboard['category']['children'] = $q[0]['total_children'];
// $q = $con->getData("SELECT count(id) total_walkins FROM personal_infos WHERE category = 'Walk-in' AND attendance = 1 AND last_modified_by IS NOT NULL");
$q = $con->getData("SELECT count(id) total_walkins FROM personal_infos WHERE category = 'Walk-in' AND attendance = 1");
$dashboard['category']['walkins'] = $q[0]['total_walkins'];

$dashboard['ages'] = [];
$ages = $con->getData("SELECT age FROM `personal_infos` WHERE attendance = 1 AND last_modified_by IS NOT NULL AND age > 0 GROUP by age");
foreach ($ages as $key => $age) {
	$age_key = ($age['age']==NULL)?0:$age['age'];
	// $q = $con->getData("SELECT count(id) total_count FROM personal_infos WHERE age = ".$age_key." AND attendance = 1 AND last_modified_by IS NOT NULL");
	$q = $con->getData("SELECT count(id) total_count FROM personal_infos WHERE age = ".$age_key." AND attendance = 1");
	$dashboard['ages'][] = array(
		"label"=>($age_key==0)?"Undefined":(string)$age_key,
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

$users = $con->getData("SELECT * FROM account_infos");
$dashboard['encoders'] = [];
foreach ($users as $key => $user) {
	
	$q = $con->getData("SELECT count(id) total_encoded FROM personal_infos WHERE last_modified_by = ".$user['account_id']);
	$dashboard['encoders'][] = array(
		"label"=>$user['account_firstname'],
		"color"=>randomRgb(),
		"count"=>$q[0]['total_encoded']	
	);
	
};

header("Content-Type: application/json");
echo json_encode($dashboard);

function randomRgb() {
	
	$color = sprintf("#%02x%02x%02x", rand(1,255), rand(1,255), rand(1,255));	

	return $color;
	
};

?>