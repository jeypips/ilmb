<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("personal_infos");

$personal_info = $con->insertData(array("personal_info_no"=>""));

header("Content-type: application/json");
echo json_encode(array("id"=>$con->insertId));

function personal_info_no_only($con,$age) {

	$personal_info_nos = $con->getData("SELECT personal_info_no FROM personal_infos ORDER BY personal_info_no DESC LIMIT 1");

	$id = 1;
	foreach ($personal_info_nos as $pin) {

		$id = (int)$pin['personal_info_no']+1;
		
	};

	$l = (strlen($id)>4)?strlen($id):4;	
	
	$personal_info_no = str_pad((string)$id,$l,"0",STR_PAD_LEFT);

	return $personal_info_no;
	
};

function personal_info_no($con,$age) {

	$pre = ($age<=7)?"C":"A";

	$personal_info_nos = $con->getData("SELECT personal_info_no FROM personal_infos WHERE personal_info_no LIKE '$pre%' ORDER BY personal_info_no DESC LIMIT 1");
	
	$id = 1;
	foreach ($personal_info_nos as $pin) {
		
		$p = substr($pin['personal_info_no'],1,strlen($pin['personal_info_no']));
		$id = (int)$p+1;
		
	};

	$l = (strlen($id)>4)?strlen($id):4;	
	
	$personal_info_no = $pre.str_pad((string)$id,$l,"0",STR_PAD_LEFT);

	return $personal_info_no;
	
};

?>