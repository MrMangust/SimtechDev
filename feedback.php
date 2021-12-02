<?php
require 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST'){


    $user_name = trim($_REQUEST['name']);
    $subject = trim($_REQUEST['subject']);
    $email = trim($_REQUEST['email']);
    $phone = trim($_REQUEST['phone']);
    $radio = trim($_REQUEST['radio']);
    $textarea = trim($_REQUEST['textarea']);
    $asap = trim($_REQUEST['select']);
    $checkbox = trim($_REQUEST['checkbox']);

    $mysqli->query("INSERT INTO feedback (user_name, subject, email, phone, radio, textarea, asap, checkbox) VALUES ('$user_name', '$subject','$email', '$phone','$radio','$textarea','$asap','checkbox')");

    echo '<pre>';
    print_r($_POST);
    echo '</pre>';
}

require 'feedback.html';