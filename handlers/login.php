<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

$con = new pdo_db();
$sql = "SELECT account_id, account_type FROM account_infos WHERE account_username = '$_POST[account_username]' AND account_password = '$_POST[account_password]'";
$account = $con->getData($sql);
if (($con->rows) > 0) {
	session_start();
	$_SESSION['account_id'] = $account[0]['account_id'];
	$_SESSION['account_type'] = $account[0]['account_type'];
	echo json_encode(array("login"=>true));
} else {
	echo json_encode(array("login"=>false));
}

?>