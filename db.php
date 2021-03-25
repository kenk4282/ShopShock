<?php
class database
{
    public $dbConn = null;

    public function connect()
    {
        $this->dbConn = new mysqli("localhost", "root", "", "shopshock");
        $this->dbConn->query("SET NAMES UTF8");
    }

    public function insertdata($data)
    {

        $sql = "INSERT INTO `member`SELECT MAX(member_id)+1,'{$data['name']}','{$data['nickname']}','{$data['pass']}','01' FROM member";
        $rs = $this->dbConn->query($sql);
    }

    public function verify_user($user, $pass)
    {
        $sql = "SELECT count(member_id) as n, name, user, type FROM member
            WHERE user='{$user}' and password='{$pass}'";
        $rs = $this->dbConn->query($sql);
        $row = $rs->fetch_assoc();
        return $row;
    }

    public function showproduct()
    {
        $sql = "SELECT Product_id, Product_code, Product_Name , Brand_name, Unit_name,Cost FROM product, brand, unit WHERE product.Brand_ID = brand.Brand_id AND product.Unit_ID = unit.Unit_id";
        $rs = $this->dbConn->query($sql);
        while ($row = $rs->fetch_assoc()) {
            echo "<tr>";
            foreach ($row as $key => $value) {
                echo "<td>{$value}</td>";
            }
            echo "<td><a href='Add_Product.php?sltpro={$row['Product_id']}'>< ShopShock ></a></td>";
            echo "</tr>";
        }
    }

    public function showdetailproduct($id)
    {
        $sql = "SELECT * FROM product, brand, unit WHERE product.Brand_ID = brand.Brand_id AND product.Unit_ID = unit.Unit_id AND product.Product_id = $id";
        $rs = $this->dbConn->query($sql);
        return $rs->fetch_assoc();
    }
}
