<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <center>
    <h1>SHOPSHOCK</h1><br>
    <h2>กรุณากรอกชื่อผู้ใช้และรหัสผ่านเพื่อเข้าสู่ระบบ</h2><br>
    <form action="handle.php" method="post">
    <table>
        <tr>
            <td>username:</td><td><input type="text" name="loguser" id="" require></td>
        </tr>
        <tr>
            <td>password:</td><td><input type="password" name="logpass" id="" require></td>
        </tr>
        <tr><td></td><td></td></tr>
    <tr><td colspan="2" align="center">
    <button type="submit">Submit</button>
    <button type="reset">Reset</button>
    <a href="Register.php"><input type="button" value="Register"></a></td></tr>
    </form>
    </table>
    </center>
</body>
</html>