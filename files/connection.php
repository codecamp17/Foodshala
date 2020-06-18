<?php
  $servername = "sql12.freemysqlhosting.net";
  $username = "sql12349442";
  $password = "auaZiUdB9n";
  $dbname = "sql12349442";

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }
?>
