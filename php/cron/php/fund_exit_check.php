<?php
require_once '../../link.php';
if (mysqli_connect_error()) {
    die("<script>console.log('There is a problem with mysql connection')</script>");
}

$data = array();

if (isset($_POST['project_address'])) {
    $project_address = mysqli_real_escape_string($con, $_POST['project_address']);
    $user_address = mysqli_real_escape_string($con, $_POST['user_address']);
    $pay_amount = mysqli_real_escape_string($con, $_POST['pay_amount']);

    $query = "SELECT sum(`pay_amount`) as pay_amount FROM `crowd_fund` WHERE `project_address`='$project_address' and `user_address`='$user_address'";

    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) !== 0) {
        $row = mysqli_fetch_array($result);
        $data['status'] = 201;
        $data['pay_amount'] = $row['pay_amount'];
        echo json_encode($data);
    } else {
        $data['status'] = 601;
        echo json_encode($data);
    }
} else {
    $data['status'] = 404;
    $data['error'] = 'somthing went wrong';
    echo json_encode($data);
}
