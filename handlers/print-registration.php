<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

$con = new pdo_db();

$id = $_POST['id'];

$personal_info = $con->getData("SELECT *, DATE_FORMAT(birth_date, '%M %d, %Y') birth_date, IF(family_head=1,'Yes','No') family_head, IF(employment_status='true','Yes','No') employment_status, IF(philhealth_member='true','Yes','No') philhealth_member, (SELECT barangays.barangay_description FROM barangays WHERE barangays.id = personal_infos.address_barangay) address_barangay, (SELECT municipalities.municipality FROM municipalities WHERE municipalities.id = personal_infos.address_municipality) address_municipality FROM personal_infos where id= $_POST[id]");
// $personal_info = $con->getData("SELECT * FROM personal_infos where id= $_POST[id]");
// $personal_info[0]['birth_date'] = date("F j, Y", strtotime($personal_info[0]['birth_date']));
// $personal_info[0]['family_head'] = ($personal_info[0]['family_head'])?"Yes":"No";
// $personal_info[0]['employment_status'] = ($personal_info[0]['employment_status'] == "true")?"Yes":"No";

foreach ($personal_info[0] as $i => $p) {
	
	if ($p == null) $personal_info[0][$i] = ""; // pdf equals null
	
}

header("Content-Type: application/json");
echo json_encode($personal_info[0]);

?>