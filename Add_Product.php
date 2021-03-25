<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Product</title>
</head>
<body>
    <form action="handle.php" method="post">
        <?php 
            include_once "db.php";
            $myconn = new database();
            $myconn->connect();
            $rs = $myconn->showdetailproduct($_GET['sltpro']);
        ?>
        <center>
            <h1>SHOPSHOCK</h1>
            <h2>select Product to Cart</h2>
            _________________________________________<br><br>
            <table>
                <tr>
                    <td>Product_ID:</td><td><input type="text" name="buyproid" id="" value="<?= $rs['Product_id']?>" readonly></td>
                </tr>
                <tr>
                    <td>Product_Code:</td><td><input type="text" name="procode" id="" value="<?= $rs['Product_code']?>" readonly></td>
                </tr>
                <tr>
                    <td>Product_Name:</td><td><input type="text" name="proname" id="" value="<?= $rs['Product_Name']?>" readonly></td>
                </tr>
                <tr>
                    <td>Brand:</td><td><input type="text" name="" id="brand" value="<?= $rs['Brand_name']?>" readonly></td>
                </tr>
                <tr>
                    <td>Unit:</td><td><input type="text" name="" id="unit" value="<?= $rs['Unit_name']?>" readonly></td>
                </tr>
                <tr>
                    <td>Cost:</td><td><input type="text" name="" id="cost" value="<?= $rs['Cost']?>" readonly></td>
                </tr>
                <tr>
                    <td>Quantity:</td><td><input type="number" name="quantity" id="" value="<?= $rs['Stock_Quantity']?>"></td>
                </tr>
            </table><br>
            _________________________________________<br>
            <button type="submit">Submit</button><button type="reset">Reset</button>
        </center>
    </form>
</body>
</html>