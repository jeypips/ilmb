<?php

$_POST = json_decode(file_get_contents('php://input'), true);

include_once '../db.php';

$con = new pdo_db("services");

if ($_POST['service']['id']) {
	
	$service = $con->updateData($_POST['service'],'id');
	
} else {
	
	$service = $con->insertData($_POST['service']);
	echo $con->insertId;

}

?>