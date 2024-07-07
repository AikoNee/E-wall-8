<?php
    include "functions.php";
    session_start();

    if(isset($_SESSION["ID"])){

        unsetSessionVariables();
        
        if(isset($_GET["params"])){
            if(!empty($_GET["params"])){
        header("location: ../view/login.php?params=" . $_GET["params"]);
            }
        }else {
        header("location: ../view/login.php");
        }
        exit();
    }