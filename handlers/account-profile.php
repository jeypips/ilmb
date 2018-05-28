<?php

header("Content-Type: application/json");

$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../db.php';

session_start();

header("Content-Type: application/json");

$con = new pdo_db();

$sql = "SELECT account_id, CONCAT(account_firstname, ' ', account_lastname) fullname, account_password, account_username, account_type FROM account_infos WHERE account_id = $_SESSION[account_id]";



echo json_encode($staff[0]);

?>