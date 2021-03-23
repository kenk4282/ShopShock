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
            echo "<a href='Register.php'>back to register...</a>";
        }
    }
    else if(isset($_POST['loguser'])){
        $rs = $myconn->verify_user($_POST['loguser'], $_POST['logpass']);
        session_start();
        if($rs['n']==1){
            $_SESSION['name']=$rs['name'];
            $_SESSION['user']=$rs['user'];
            $_SESSION['type']=$rs['type'];
            header("location: productlist.php");
        }
        else{
            echo "<script>alert('รหัสผ่านไม่ถูกต้อง')</script>";
            echo "<a href='login.php'>back to login...</a>";
        }
    }else if(isset($_POST['proid'])){
        
    }
?>