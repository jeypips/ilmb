<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("personal_infos");

$_POST['personal_info']['birth_date'] =  date("Y-m-d",strtotime($_POST['personal_info']['birth_date'])); // date Format
$_POST['personal_info']['family_head'] = ($_POST['personal_info']['family_head'])?1:0; //for checkbox
$_POST['personal_info']['attendance'] = ($_POST['personal_info']['attendance'])?1:0; //for checkbox
$_POST['personal_info']['address_barangay'] = $_POST['personal_info']['address_barangay']['id'];
$_POST['personal_info']['address_municipality'] = $_POST['personal_info']['address_municipality']['id'];

$_POST['personal_info']['family_members'] = (!$_POST['personal_info']['family_head'])?0:$_POST['personal_info']['family_members']; // checkbox 0 value

if ($_POST['personal_info']['id']) {

	$personal_info = $con->updateData($_POST['personal_info'],'id');

} else {

	$personal_info_no = personal_info_no($con,$_POST['personal_info']['age']);
	$_POST['personal_info']['personal_info_no'] = $personal_info_no;
	$personal_info = $con->insertData($_POST['personal_info']);

	header("Content-type: application/json");
	echo json_encode(array("id"=>$con->insertId,"personal_info_no"=>$personal_info_no));

}

function personal_info_no($con,$age) {

	$pre = ($age<=7)?"C":"A";

	$personal_info_nos = $con->getData("SELECT personal_info_no FROM personal_infos WHERE personal_info_no LIKE '$pre%' ORDER BY personal_info_no DESC LIMIT 1");
	
	$id = 1;
	foreach ($personal_info_nos as $pin) {
		
		$p = substr($pin['personal_info_no'],1,strlen($pin['personal_info_no']));
		$id = (int)$p+1;
		
	};

	$age = 8;
	$l = (strlen($id)>4)?strlen($id):4;	
	
	$personal_info_no = $pre.str_pad((string)$id,$l,"0",STR_PAD_LEFT);

	return $personal_info_no;
	
};

?>