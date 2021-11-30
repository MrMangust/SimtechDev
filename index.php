<?php
require_once("index.html");
$host = 'localhost';
$db_user = 'root';
$db_password = 'root';
$db_name = 'simtechdev';

/*подключение к базе данных*/
$mysqli = mysqli_connect($host, $db_user, $db_password,$db_name);


if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    $first_name = trim($_SERVER['first_name']);
    $last_name = trim($_SERVER['last_name']);
    $gender = trim($_SERVER['gender']);
    $email = trim($_SERVER['email']);
    $pass = password_hash(trim($_SERVER['password']), PASSWORD_BCRYPT);


    $mysqli->query("INSERT INTO users (fname, lname, gender, email, password) VALUES ('$first_name','$last_name','$gender','$email','$pass')");

}






echo "<pre>";
print_r($_REQUEST);
echo "</pre>";