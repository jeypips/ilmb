<?php

require_once '../db.php';

$con = new pdo_db("personal_infos");

$delete = $con->deleteData(array("event_id"=>"0"));

?>