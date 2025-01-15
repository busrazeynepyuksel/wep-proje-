<?php
// Veritabanı bağlantısı
$servername = "localhost";
$username = "root"; // Veritabanı kullanıcı adı
$password = ""; // Veritabanı şifresi
$dbname = "macars"; // Veritabanı adı

// Bağlantıyı oluştur
$mysqli = new mysqli($servername, $username, $password, $dbname);

// Bağlantıyı kontrol et
if ($mysqli->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>