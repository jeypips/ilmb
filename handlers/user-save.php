<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("account_infos");

if ($_POST['account_info']['account_id']) {
	
	$account_info = $con->updateData($_POST['account_info'],'account_id');
	
} else {
	
	$account_info = $con->insertData($_POST['account_info']);
	echo $con->insertId;

}

?>