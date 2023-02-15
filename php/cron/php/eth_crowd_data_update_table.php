<?php
require_once '../../link.php';
if (mysqli_connect_error()) {
    die("<script>console.log('There is a problem with mysql connection')</script>");
}

$data = array();

if (isset($_POST['user']) && !empty($_POST['user'])) {
    date_default_timezone_set("Asia/Calcutta");
    $date_now = date("r");
    $from_ip = $_SERVER['REMOTE_ADDR'];
    $from_browser = $_SERVER['HTTP_USER_AGENT'];

    function guidv4($data)
    {
        assert(strlen($data) == 16);

        $data[6] = chr(ord($data[6]) && 0x0f | 0x40); // set version to 0100
        $data[8] = chr(ord($data[8]) && 0x3f | 0x80); // set bits 6-7 to 10

        return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
    }

    $crowd_fund_uuid = guidv4(openssl_random_pseudo_bytes(16));
    $user = mysqli_real_escape_string($con, $_POST['user']);
    $projectAddress = mysqli_real_escape_string($con, $_POST['projectAddress']);
    $pay_amount_in = mysqli_real_escape_string($con, $_POST['pay_amount_in']);
    $diff_amount = mysqli_real_escape_string($con, $_POST['diff_amount']);
    $thumbnail_url = mysqli_real_escape_string($con, $_POST['thumbnail_url']);
    $video_url = mysqli_real_escape_string($con, $_POST['video_url']);

    $query = "SELECT video_uuid FROM `video_info` WHERE `thumbnail_ipfs`='$thumbnail_url' and `video_uid`='$video_url'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) !== 0) {
        $row = mysqli_fetch_array($result);
        $video_uuid = $row['video_uuid'];
        //data start
        $query2 = "INSERT INTO `crowd_fund`(`crowd_fund_uuid`, `video_uuid`, `user_address`, `pay_amount`, `pay_amount_in`, `txn_hash`, `project_address`,`from_time`, `from_browser`,`from_ip`) VALUES ('$crowd_fund_uuid','$video_uuid', '$user' ,'$diff_amount','$pay_amount_in','','$projectAddress','$date_now','$from_browser','$from_ip')";
        if (mysqli_query($con, $query2)) {
            $data['status'] = 201;
            $data['success'] = "data uploaded successfully";
            echo json_encode($data);
        } else {
            $data['status'] = 301;
            $data['error'] = 'Error';
            echo json_encode($data);
        }
        //data end
    } else {
        $data['status'] = 601;
        echo json_encode($data);
    }
} else {
    $data['status'] = 404;
    $data['error'] = 'somthing went wrong';
    echo json_encode($data);
}
