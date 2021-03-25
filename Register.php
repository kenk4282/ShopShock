<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>
<body style="margin: 0 auto; width:450px">
    <center>
    <br><br>
    <h1>ShopShock Member Register</h1>
    <form action="handle.php" method="post">
    <div style="border: red 1px solid;padding:20px">
    <table>
        <th>
            <td colspan="2" align="right"><a href="login.php">login</a></td>
        </th>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td>Name :</td><td><input type="text" name="insert_name" id="" required></td>
        </tr>
        <tr>
            <td>NickName :</td><td><input type="text" name="insert_nickname" id="" required></td>
        </tr>
        <tr>
            <td>Password :</td><td><input type="password" name="insert_pass" id="" required></td>
        </tr>
        <tr>
            <td>Confirm Password :</td><td><input type="password" name="insert_compass" id="" required></td>
        </tr>
        <tr><td></td></tr>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
    </table><br>
    <button type="submit">Submit</button><button type="reset">Reset</button>
    </div>
    </form>
    </center>
    
</body>
</html>
