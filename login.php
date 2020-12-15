<?php
    session_start();



    $servername = 'localhost';
    $username = 'smu';
    $password = '1234';
    $dbname = 'smu';

    $userid = $_POST['userid'];
    $passwd = $_POST['passwd'];
  
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    
    $sql = "SELECT userid, passwd FROM member WHERE userid='$userid'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            if(password_verify($passwd, $row['passwd'])){
                $_SESSION['userid'] = $row['userid'];
                header('Location: http://localhost/mm/map.html');
            } else {
                echo '아이디, 비번이 맞지 않음';
            }
        }
    } else {
        echo "0 results";
    }
    $conn->close();
?>