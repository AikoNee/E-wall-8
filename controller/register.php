<?php
    include "conn.php";
    include "functions.php";
    session_start();

    if( isset( $_POST['username']) && isset( $_POST['password'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $confirmpassword = $_POST['confirm_password'];
        $Fname = $_POST["Fname"];
        $Lname = $_POST["Lname"];
        $Mname = $_POST["Mname"];
        if(empty($username) || empty($password)){
            loginError("Enter username and password.");
            exit();
        }
        if($password != $confirmpassword){
            loginError("Password does'nt match");
            exit();
        }
        $res = $conn->query("SELECT * FROM users WHERE username='$username'");
        if ($res->num_rows == 1) {
            loginError("Username already exist.");
            exit();
        }

        if($conn->query("INSERT INTO users( username , `password` , Fname , Lname , Mname , Balance ) VALUES ( '$username' , '$password' , '$Fname' , '$Lname' , '$Mname' , 0.0 )")){


        header("Location: ../view/login.php?params=Successfully created account");
        exit();
        
    }   else {            
             loginError("Please enter valid inputs.");
        exit();
    }
}