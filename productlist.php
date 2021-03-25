<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
</head>

<body>
    <form action="hendle.php" method="post">
        <table align="right">
            <tr>
                <td>ยินดีต้อนรับ</td>
            </tr>
            <tr>
                <td>คุณ <?php
                        session_start();
                        if ($_SESSION['name'] == "") {
                            header("location: login.php");
                        } else {
                            echo "{$_SESSION['name']}";
                        }
                        ?></td>
            </tr>
        </table>
        <center>
            <h1>ยินดีต้อนรับเข้าสู่เมนูลูกค้า</h1>
            <br>|<a href="Productlist.php">สั่งซื้อสินค้า</a>|<a href="PO.php">ชำระเงิน</a>|<a href="logout.php">ออกจากระบบ</a>|<br>
            <h2>SHOPSHOCK</h2>
            <h3>Select Product to Cart</h3>
            <table border="1">
                <th>ID</th>
                <th>Product_code</th>
                <th>Product_Name</th>
                <th>Brand</th>
                <th>Unit</th>
                <th>Cost</th>
                <th>SHOPS</th>
                <?php
                include_once "db.php";
                $myconn = new database();
                $myconn->connect();
                $myconn->showproduct();
                ?>
            </table>
        </center>
    </form>
</body>

</html>