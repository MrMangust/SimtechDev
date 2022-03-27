<?php
$servername = 'localhost'; /*имя сервера*/
$db_user = 'root'; /*имя пользователя базы данных*/
$db_password = ''; /*пароль пользователя базы данных*/
$db_name = 'simtechdev'; /*имя базы данных*/

/*гугл-акк для smtp  testmailtestmailg@gmail.com test123test*/
$mysqli = mysqli_connect($servername, $db_user, $db_password, $db_name);
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}