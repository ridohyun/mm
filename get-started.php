<?php
  session_start();

  $userid = isset($_SESSION['userid']) ? $_SESSION['userid'] : '';
?>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyTC</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./js/login.js"></script>
    <style>
        html{
            width: 100vw;
            height: 100vh;
            background-color: #495d63;
            color: #d3d3d3;
        }
        body>div{
            width: 99vw;
            height:99vh;
            text-align:center;
            margin: 0 auto;
            display:table-cell;
            vertical-align:middle;
        }
        h2{
            margin-bottom:20px;
        }
        fieldset{
            display: inline;
            border:none;
        }
        legend{
            display:none
        }
        button{
            color:#d3d3d3;
        }
</style>
</head>

<body>
    <div>
    <h2>
        로그인을 해주세요
    </h2>
    <fieldset>
            <legend>로그인</legend>
            <form name="login_form" action="login.php" method="post">
                <input type="text" name="userid" class="form-control" placeholder="아이디 입력"style="margin-bottom:5px;"><br>
                <input type="password" name="passwd" class="form-control" placeholder="비밀번호 입력" style="margin-bottom:15px;"><br>
                <button type="submit" onclick="check_input()">로그인</button>
                <a href="./register.html">회원가입</a>
            </form>
        </fieldset>
    </div>
</body>
</html>
