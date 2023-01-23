<?php

  // localhost
  $con= new mysqli("localhost","root","","fin_2021");
  
  // testsite
  // $con= new mysqli("localhost","finflix","finflix","finflix");

  if($con->connect_error){

    die("connection Failed" .$con->connect_error);

  }
?>