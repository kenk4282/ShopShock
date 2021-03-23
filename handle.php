<?php
    require_once "db.php";
    $myconn = new database();
    $myconn->connect();

    if(isset($_POST['insert_name'])){
        if($_POST['insert_pass'] == $_POST['insert_compass']){
            $data['name'] = $_POST['insert_name'];
            $data['nickname'] = $_POST['insert_nickname'];
            $data['pass'] = $_POST['insert_pass'];
            $myconn->insertdata($data);
            header("location: login.php");
        }
        else{
            echo "<script>alert('PASSWORD NOT MATCH')</script>";
        }
    }
    else if(isset($_POST['loguser'])){
        $rs = $myconn->verify_user($_POST['loguser'], $_POST['logpass']);
        $pro = $mycon->showproduct();
        session_start();
        if($rs['n']==1){
            $_SESSION['user']=$rs['user'];
            $_SESSION['type']=$rs['type'];
            $_SESSION['proid'] = $pro['Product_id'];
            $_SESSION['procode'] = $pro['Product_code'];
            $_SESSION['proname'] = $pro['Product_Name'];
            $_SESSION['brand'] = $pro['Brand_ID'];
            $_SESSION['unit'] = $pro['Unit_ID'];
            $_SESSION['cost'] = $pro['Cost'];
            header("location: productlist.php");
        }
        else{
            echo "<script>alert('รหัสผ่านไม่ถูกต้อง')</script>";
        }
    }
?>