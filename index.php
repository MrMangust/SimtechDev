<?php
require_once("index.html");


if ($_SERVER['REQUEST_METHOD'] === 'POST'){
$servername= 'localhost';
$db_user = 'root';
$db_password = 'root';
$db_name = 'simtechdev';

$mysqli = mysqli_connect($servername, $db_user, $db_password,$db_name);
if (!$mysqli){
    die("Connection failed: " . mysqli_connect_error());
    }

    $first_name = trim($_SERVER['first_name']);
    $last_name = trim($_SERVER['last_name']);
    $gender = trim($_SERVER['gender']);
    $email = trim($_SERVER['email']);
    $pass = password_hash(trim($_SERVER['password']), PASSWORD_BCRYPT);


    $mysqli->query("INSERT INTO users (first_name, last_name, gender, email, password) VALUES ('$first_name','$last_name','$gender','$email','$pass')");

}
