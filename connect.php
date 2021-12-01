<?php
$servername= 'localhost';
$db_user = 'root';
$db_password = 'root';
$db_name = 'simtechdev';

$mysqli = mysqli_connect($servername, $db_user, $db_password,$db_name);
if (!$mysqli){
    die("Connection failed: " . mysqli_connect_error());
}