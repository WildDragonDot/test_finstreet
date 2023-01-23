<?php

  // localhost
  $con= new mysqli("localhost","root","","fin_2021");
  
  // testsite
      // $con= new mysqli("localhost","finflix","finflix","finflix");
  $img_link = "images/courses/";
  $img_link2 = "images/";
  $donate_eth_address = '0x49E8883B30c482ADE14488Fd00A6622c9377C366';
  if($con->connect_error){
    die("connection Failed" .$con->connect_error);
  }
?>