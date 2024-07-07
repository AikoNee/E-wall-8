<?php
    if(session_status() != PHP_SESSION_ACTIVE ) {
   
        session_start();
    }

   function getCurrentMilliseconds(){
   $ms =  (int) floor(microtime(true));
   $randomINT = rand(10000, 99999);
   return $ms + $randomINT;
   }


   function expiredSessionTime($sessionStartTime){
    $threshold = 1800; // 30 minutes in seconds
    $currentTime = time();
    $startTime = $sessionStartTime;
    $totalTimeSpentinApp = ($currentTime - $startTime ) ;
    if( $totalTimeSpentinApp > $threshold ) {
        return true;
    }else {
        return false;
    }
   }

   function unsetSessionVariables(){
    unset($_SESSION["ID"]);
    unset($_SESSION["username"]);
    unset($_SESSION["Fname"]);
    unset($_SESSION["Lname"]);
    unset($_SESSION["Mname"]);
    unset($_SESSION["Balance"]);
    unset($_SESSION["SessionID"]);
    session_destroy();
   }
   
   function loginError($params){
    header("Location: ../view/login.php?params=<p style='color:red;'>$params</p>");
    exit();
    }

    function getUserFullName($Fname , $Mname , $Lname){
        return "$Fname $Mname $Lname";
    }
