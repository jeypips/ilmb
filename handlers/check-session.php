<?php

session_start();

if (!isset($_SESSION['account_id'])) header('X-Error-Message: Session timeout', true, 500);

?>