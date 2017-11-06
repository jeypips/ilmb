<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("account_infos");

if ($_POST['event']['id']) {
	
	$event = $con->updateData($_POST['event'],'id');
	
} else {
	
	$event = $con->insertData($_POST['event']);
	echo $con->insertId;

}

?>