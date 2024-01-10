<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify</title>
</head>
<body>
    <h1 style="text-align: center;">Webboard kakkak</h1>
    <hr>
    <div style="text-align: center;">
        <?php
            $login = $_POST['login'];
            $pwd = $_POST['pwd'];
            if($login == "Admin" && $pwd == "ad1234") {
                echo "ยินดีต้อนรับคุณ ADMIN <br>";
            }
            elseif($login == "member" && $pwd == "mem1234"){
                echo "ยินดีต้อนรับคุณ MEMBER <br>";
            }
            else{
                echo "ชื่อบัญชีหรือรหัสผ่านไม่ถูกต้อง <br>";
            }
            echo "<a href=index.php>กลับไปยังหน้าหลัก</a>"; 
            //echo "เข้าสู่ระบบด้วย <br>";
            //echo "Login = $_POST[login]<br>";
            //echo "Password = $_POST[pwd]<br>"
        ?>
    </div>
</body>
</html>