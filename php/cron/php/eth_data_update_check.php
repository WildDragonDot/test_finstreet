<?php
require_once '../../link.php';
if (mysqli_connect_error()) {
    die("<script>console.log('There is a problem with mysql connection')</script>");
}

$data = array();

if (isset($_POST['project_address'])) {
    $project_address = mysqli_real_escape_string($con, $_POST['project_address']);

    $result = mysqli_query($con, "SELECT * FROM `video_info` WHERE `project_address`='$project_address'");

    if (mysqli_num_rows($result) === 0) {
        $row = mysqli_fetch_array($result);
        $data['status'] = 201;
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
