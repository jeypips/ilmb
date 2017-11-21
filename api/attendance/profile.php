<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db("personal_infos");

$services = $con->getData("SELECT * FROM services");

$profile = $con->getData("SELECT id, personal_info_no, event_id, CONCAT(lastname, ', ', firstname, ' ', IFNULL(middlename,'')) fullname, DATE_FORMAT(birth_date,'%M %e, %Y') birth_date, age, (SELECT barangay_description FROM barangays WHERE id = address_barangay) barangay, category, attendance FROM personal_infos WHERE id = ".$_POST['id']);
$profile[0]['attendance'] = ($profile[0]['attendance'])?true:false;
$profile[0]['color_code'] = "5DADE2";

header("Content-Type: application/json");
echo json_encode($profile[0]);

?>