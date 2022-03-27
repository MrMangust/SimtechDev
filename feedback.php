<?php
require 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $image = $_FILES['image'];
    $types = ["image/jpeg", "image/png"];

    if (!in_array($image["type"], $types)) {
        die("Неверный типа файла.");
    }

    if (!is_dir('uploads')) {
        mkdir('uploads', 0777, true);
    }
    $extension = pathinfo($image["name"], PATHINFO_EXTENSION);
    $fileName = time() . ".$extension";
    move_uploaded_file($image["tmp_name"], "uploads/" . $fileName);
    $pathfile = 'uploads/'. $fileName;


    $user_name = trim($_REQUEST['name']);
    $subject = trim($_REQUEST['subject']);
    $email = trim($_REQUEST['email']);
    $phone = trim($_REQUEST['phone']);
    $radio = trim($_REQUEST['radio']);
    $textarea = trim($_REQUEST['textarea']);
    $asap = trim($_REQUEST['select']);
    $checkbox = trim($_REQUEST['checkbox']);

    $mysqli->query("INSERT INTO feedback (user_name, subject, email, phone, radio, textarea, asap, checkbox, filepath) VALUES ('$user_name', '$subject','$email', '$phone','$radio','$textarea','$asap','$checkbox', '$pathfile')");
    mail("ninan2290@gmail.com", $subject, $textarea, $email);

}

require 'feedback.html';