<?php

include 'baglan.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Form verilerini al
    $ad = $_POST['ad'];
    $email = $_POST['email'];
    $mesaj = $_POST['mesaj'];

    // Verilerin boş olmadığını kontrol et
    if (empty($ad) || empty($email) || empty($mesaj)) {
        echo "Lütfen tüm alanları doldurduğunuzdan emin olun.";
        header("refresh:3;url=../iletisim.html");
    } else {
        // SQL sorgusunu hazırla
        $sql = "INSERT INTO iletisim (ad, email, mesaj) VALUES (?, ?, ?)";

        if ($stmt = $mysqli->prepare($sql)) {
            // Parametreleri bağla
            $stmt->bind_param("sss", $ad, $email, $mesaj);

            // Sorguyu çalıştır
            if ($stmt->execute()) {
                echo "Mesajınız başarıyla gönderildi!";
                header("refresh:3;url=../iletisim.html");
            } else {
                echo "Mesaj gönderilirken bir hata oluştu: " . $stmt->error;
                header("refresh:3;url=../iletisim.html");
            }

            // Bağlantıyı kapat
            $stmt->close();
        } else {
            echo "SQL sorgusu hazırlanırken hata oluştu: " . $mysqli->error;
            header("refresh:3;url=../iletisim.html");
        }
    }
}

// Bağlantıyı kapat
$mysqli->close();
?>