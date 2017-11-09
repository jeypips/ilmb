<?php

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../classes/db.php';
require_once '../classes/DataTables/ssp.class.php';


$table = 'personal_infos_list';
$primaryKey = 'id';

$columns = array(
    array("db"=>"personal_info_no","dt"=>0),
    array("db"=>"fullname","dt"=>1),
    array("db"=>"event","dt"=>2),
    array("db"=>"barangay","dt"=>3),
    array("db"=>"municipality","dt"=>4),
    array("db"=>"placeholder","dt"=>5),
    array("db"=>"id","dt"=>6)
);

$whereResult = null;
$whereAll = null;

$personal_infos = SSP::complex($_GET,$sql_details,$table,$primaryKey,$columns,$whereResult,$whereAll);

foreach ($personal_infos['data'] as $i => $personal_info) {
	
	$action = '<button class="btn btn-sm btn-primary" ng-click="form.registration(this,{id: '.$personal_infos['data'][$i][6].'})" style="margin-right: 5px;" ><i class="fa fa-search" style="cursor: pointer;"></i></button>';
	$action .= '<button class="btn btn-sm btn-googleplus" ng-click="form.delete(this,{id: '.$personal_infos['data'][$i][6].'})"><i class="fa fa-close" style="cursor: pointer;"></i></button>';
	
	$personal_infos['data'][$i][5] = $action;
	
};

header("Content-Type: application/json");
echo json_encode($personal_infos);

?>