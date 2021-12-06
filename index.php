<?php
require "connect.php";
$mode = isset($_REQUEST['mode']) ? $_REQUEST['mode'] : false;

if ($_SERVER['REQUEST_METHOD'] === 'POST'){


//Авторизация
    if($mode === 'users') {
        $email = trim($_REQUEST['email']);
        $user = $mysqli->query("SELECT email, password FROM users where email = '$email' limit 1");
        $user = mysqli_fetch_array($user, MYSQLI_ASSOC);


        if ($user) {
            if (password_verify(trim($_REQUEST['password']), $user['password'])) {
                $customers = $mysqli->query("SELECT * FROM users");
                while ($result = mysqli_fetch_array($customers, MYSQLI_ASSOC)){
                    $users[] = $result;

                }

                $feed = $mysqli->query("SELECT * FROM feedback");
                while ($result = mysqli_fetch_array($feed, MYSQLI_ASSOC)){
                    $feeds[] = $result;
                }

                require 'users_list.html';
            } else {
                require 'index.html';
            }
        }

        exit();
    }

//Registration
    $first_name = trim($_REQUEST['first_name']);
    $last_name = trim($_REQUEST['last_name']);
    $gender = trim($_REQUEST['gender']);
    $email = trim($_REQUEST['email']);
    $pass = password_hash(trim($_REQUEST['password']), PASSWORD_BCRYPT);
    $mysqli->query("INSERT INTO users (first_name, last_name, gender, email, password) VALUES ('$first_name','$last_name','$gender','$email','$pass')");

}
//Вывод пользвателей
/*$customers = $mysqli->query("SELECT * FROM users");
while ($result = mysqli_fetch_array($customers, MYSQLI_ASSOC)){
    $users[] = $result;
}*/


if ($mode === 'auth'){
    require 'auth.html';
}else{
    require 'index.html';
}


/*require 'index.html';*/
/*require 'users_list.html';*/
exit();