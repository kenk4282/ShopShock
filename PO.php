<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="handle.php" method="post">
        <?php 
            include_once "db.php";
            $myconn = new database();
            $myconn->connect();
        ?>
        <center>
            <h1>SHOPSHOCK</h1>
            <h2>select Product to Cart</h2>
            _________________________________________<br><br>
            <table>
                <tr>
                    <td>Product_ID:</td><td><input type="text" name="proid" id="" value="<?= $_REQUEST['Product_id']?>" readonly></td>
                </tr>
                <tr>
                    <td>Product_Code:</td><td><input type="text" name="procode" id="" readonly></td>
                </tr>
                <tr>
                    <td>Product_Name:</td><td><input type="text" name="proname" id="" readonly></td>
                </tr>
                <tr>
                    <td>Brand:</td><td><input type="text" name="" id="brand" readonly></td>
                </tr>
                <tr>
                    <td>Unit:</td><td><input type="text" name="" id="unit" readonly></td>
                </tr>
                <tr>
                    <td>Cost:</td><td><input type="text" name="" id="cost" readonly></td>
                </tr>
                <tr>
                    <td>Quantity:</td><td>
                    </td>
                </tr>
            </table><br>
            _________________________________________<br>
            <button type="submit">Submit</button><button type="reset">Reset</button>
        </center>
    </form>
</body>
</html>