<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("personal_infos");

$_POST['personal_info']['birth_date'] =  date("Y-m-d",strtotime($_POST['personal_info']['birth_date']));
$_POST['personal_info']['family_head'] = ($_POST['personal_info']['family_head'])?1:0; //for checkbox
$_POST['personal_info']['attendance'] = ($_POST['personal_info']['attendance'])?1:0; //for checkbox
$_POST['personal_info']['address_barangay'] = $_POST['personal_info']['address_barangay']['id'];
$_POST['personal_info']['address_municipality'] = $_POST['personal_info']['address_municipality']['id'];

$_POST['personal_info']['family_members'] = (!$_POST['personal_info']['family_head'])?0:$_POST['personal_info']['family_members']; // checkbox 0 value

if ($_POST['personal_info']['id']) {
	
	$personal_info = $con->updateData($_POST['personal_info'],'id');
	
} else {
	
	$personal_info = $con->insertData($_POST['personal_info']);
	
	echo $con->insertId;

}

?>