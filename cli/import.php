<?php

header("Content-Type: text/html; charset=UTF-8");

$data = [];
$file = fopen("../data/sha.csv","rb");

$c = 0;
while (! feof($file)) {
	$data[] = fgetcsv($file, 0);
	++$c;
	// if ($c == 3) break;
}

require_once '../db.php';

$con = new pdo_db("personal_infos");

$i = 0;
$total = count($data);

echo "Inializing data import\n";

foreach ($data as $d) {
	
	echo "Importing $i/$total...";	
	
	$d = array(
		"event_id"=>1,
		"personal_info_no"=>personal_info_no($con,trim($d[4])),
		"firstname"=>utf8_encode(trim($d[0])),
		"lastname"=>utf8_encode(trim($d[1])),
		"extension_name"=>trim($d[2]),
		"address_barangay"=>address_barangay($con,trim($d[3])),
		"address_municipality"=>13,
		"category"=>trim($d[4])
	);
	
	// var_dump($d);
	
	$import = $con->insertData($d);

	$percent = ceil($i*100/$total);	
	
	echo "$percent%...\n";

	++$i;	
	
}

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