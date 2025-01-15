<?php

include 'php/baglan.php';


// Veritabanından verileri çekme
$sql = "SELECT arac_modeli, yıllı, kilometre, günlük_fiyat, haftalık_fiyat, aylık_fiyat FROM araclar";
$result = $mysqli->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>MaCar's</title>
  <link rel="shortcut icon" type="image/png" href="img/logo2.png"/>
  <link rel="stylesheet" href="fiyat_bilgisi.css">
  <link rel="stylesheet" href="navbar.css">
</head>
<body>

  <div class="container">
    <div class="navbar">    
    <a href="index.html">
      <img src="img/logo1.jpg.jpg" alt="logo">
    </a>
    

    <nav>
    <ul>
      <li><a href="hakkında.html">HAKKIMIZDA</a></li>
      <li><a href="fiyat_bilgisi.php">FİYAT BİLGİSİ</a></li>
      <li><a href="iletisim.html">İLETİŞİM</a></li>
    </ul>

    </nav>

    </div>

  <section>
    <h2>Araç Kiralama Fiyatları</h2>
    <table id="fiyatlar">
      <tr>
        <th>Araç Modeli</th>
        <th>Model Yılı</th>
        <th>Kilometre Limiti (Günlük)</th>
        <th>Günlük Fiyat (TL)</th>
        <th>Haftalık Fiyat (TL)</th>
        <th>Aylık Fiyat (TL)</th>
      </tr>
      <?php
      // Verileri tabloya yerleştir
      if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            // Satırları döngü ile yazdır
            echo "<tr>";
            echo "<td>" . $row["arac_modeli"] . "</td>";
            echo "<td>" . $row["yıllı"] . "</td>";
            echo "<td>" . $row["kilometre"] . "</td>";
            echo "<td>" . $row["günlük_fiyat"] . "</td>";
            echo "<td>" . $row["haftalık_fiyat"] . "</td>";
            echo "<td>" . $row["aylık_fiyat"] . "</td>";
            echo "</tr>";
        }
      } else {
        echo "<tr><td colspan='6'>Veri bulunamadı</td></tr>";
      }

      // Bağlantıyı kapat
      $mysqli->close();
      ?>
    </table>
  </section>

  
  <script src="java.js"></script>
</div>
    <footer>
      <p>
        Copyright © 2024 | <a href="https://macars.com.tr">macars.com.tr</a> |
        Tüm Hakları Saklıdır.
      </p>
    </footer>
</body>
</html>
