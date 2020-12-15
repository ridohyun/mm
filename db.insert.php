<?php
  $servername = 'localhost';
  $username = 'smu';
  $password = '1234';
  $dbname = 'smu';

  $userid = $_POST['userid'];
  $passwd = $_POST['passwd'];
  $name = $_POST['name'];

  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $hashed_passwd = password_hash($passwd, PASSWORD_DEFAULT); // 60자 
  $sql = "INSERT INTO member (userid, passwd, name) VALUES ('$userid', '$hashed_passwd', '$name')";

  if ($conn->query($sql) === TRUE) {
    header('Location: http://localhost/mm/get-started.php'); // redirection
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
?>