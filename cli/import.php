<?php

header("Content-Type: text/html; charset=UTF-8");

$data = [];
$file = fopen("../data/bacnotan.csv","rb");

$c = 0;
while (! feof($file)) {
	$data[] = fgetcsv($file, 0);
	++$c;
	// if ($c == 3) break;
}

require_once '../db.php';

$con = new pdo_db("personal_infos");

$i = 1;
$total = count($data);

$lfirst = true;
$lfirst = false;

echo "Inializing data import\n";

foreach ($data as $d) {
	
	if (!$d) continue;
	
	echo "Importing $i/$total...";	
	
	/* $e = array(
		"event_id"=>1,
		"personal_info_no"=>personal_info_no($con,trim($d[4])),
		"firstname"=>utf8_encode(trim($d[0])),
		"lastname"=>utf8_encode(trim($d[1])),
		"extension_name"=>trim($d[2]),
		"address_barangay"=>address_barangay($con,trim($d[3])),
		"address_municipality"=>13,
		"category"=>trim($d[4])
	); */
	
	$firstname = "";
	$lastname = "";
	$middlename = "";
	
	$n = preg_replace('/[,]/', '', $d[1]);
	
	$names = explode(" ",$n);
	
	if (count($names)==3) {
		
		$firstname = utf8_encode($names[0]);
		$lastname = utf8_encode($names[2]);
		$middlename = utf8_encode($names[1]);
		
		if ($lfirst) {
			$lastname = utf8_encode($names[0]);
			$firstname = utf8_encode($names[1]);
			$middlename = utf8_encode($names[2]);
		};
		
	}
	
	if (count($names)==2) {
		
		$firstname = utf8_encode($names[0]);
		$lastname = utf8_encode($names[1]);
		
		if ($lfirst) {
			$lastname = utf8_encode($names[0]);
			$firstname = utf8_encode($names[1]);
		};		
		
	};

	if (count($names)==1) {
		
		$firstname = utf8_encode($names[0]);
		
	};

	$personal_info_no = STR_PAD($d[0],4,"0",STR_PAD_LEFT);
	
	$e = array(
		"event_id"=>1,
		"personal_info_no"=>$personal_info_no,
		"firstname"=>$firstname,
		"lastname"=>$lastname,
		"middlename"=>$middlename,
		"address_barangay"=>address_barangay($con,ucfirst(strtolower(trim($d[2])))),
		"address_municipality"=>3,
		"category"=>"Indigent"
	);

	$import = $con->insertData($e);

	$percent = ceil($i*100/$total);

	echo "$percent%...($personal_info_no)\n";

	++$i;

};

echo "$percent% completed...";

function personal_info_no($con,$cat) {

	$pre = ($cat=='Child')?"C":"A";

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

function personal_info_no_only($con) {

	$personal_info_nos = $con->getData("SELECT personal_info_no FROM personal_infos ORDER BY personal_info_no DESC LIMIT 1");

	$id = 1;
	foreach ($personal_info_nos as $pin) {

		$id = (int)$pin['personal_info_no']+1;
		
	};

	$l = (strlen($id)>4)?strlen($id):4;	
	
	$personal_info_no = str_pad((string)$id,$l,"0",STR_PAD_LEFT);

	return $personal_info_no;
	
};

function address_barangay($con,$desc) {
	
	$barangays = $con->getData("SELECT * FROM barangays");
	
	foreach ($barangays as $barangay) {
		
		if ($barangay['barangay_description'] == $desc) return $barangay['id'];
		
	};
	
	return null;
	
};

?>