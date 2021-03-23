<?php
    class database{
        public $dbConn=null;

        public function connect(){
            $this->dbConn = new mysqli("localhost", "root", "", "shopshock");
            $this->dbConn->query("SET NAMES UTF8");
        }

        public function insertdata($data){
            $sql = "INSERT INTO `member`(`name`, `user`, `password`)
            VALUES ('{$data['name']}','{$data['nickname']}','{$data['name']}')";
            $rs = $this->dbConn->query($sql);
        }

        public function verify_user($user, $pass){
            $sql = "SELECT count(member_id) as n, name, user, type FROM member
            WHERE user='{$user}' and password='{$pass}'";
            $rs=$this->dbConn->query($sql);
            $row=$rs->fetch_assoc();
            return $row;
        }

        public function showproduct(){
            $sql = "SELECT * FROM product";
            $rs=$this->dbConn->query($sql);
            while ($row=$rs->fetch_assoc()){
                echo "<tr>";
                foreach($row as $key => $value){
                    if($key != "Cat_ID" && $key != "Stock_Quantity" && $key != "Order_Point"){
                        echo "<td>{$value}</td>";
                    }
                }
                echo "<td><a href='PO.php?sltpro={$row['Product_id']}'>< ShopShock ></a></td>";
                echo "</tr>";
            }
        }
    }
?>