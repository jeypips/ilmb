<?php


$_POST = json_decode(file_get_contents('php://input'), true);

require_once '../../db.php';

session_start();

$con = new pdo_db();

$profiles = $con->getData("SELECT id, CONCAT_WS(' ', personal_info_no, lastname, firstname, middlename) suggestion FROM personal_infos");

header("Content-Type: application/json");
echo json_encode($profiles);

?>