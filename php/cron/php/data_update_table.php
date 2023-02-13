<?php
require_once '../../link.php';
if (mysqli_connect_error()) {
    die("<script>console.log('There is a problem with mysql connection')</script>");
}

$data = array();

if (isset($_POST['update_project_uri_link'])) {
    date_default_timezone_set("Asia/Calcutta");
    $date_now = date("r");
    $from_ip = $_SERVER['REMOTE_ADDR'];
    $from_browser = $_SERVER['HTTP_USER_AGENT'];
    $VideoDetails = '/videodetails';

    function guidv4($data)
    {
        assert(strlen($data) == 16);

        $data[6] = chr(ord($data[6]) && 0x0f | 0x40); // set version to 0100
        $data[8] = chr(ord($data[8]) && 0x3f | 0x80); // set bits 6-7 to 10

        return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
    }

    $video_uuid = guidv4(openssl_random_pseudo_bytes(16));
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $category = mysqli_real_escape_string($con, $_POST['module_uuid']);
    $video_desc = mysqli_real_escape_string($con, $_POST['description']);
    $thumbnail_ipfs = mysqli_real_escape_string($con, $_POST['thumbnail_ipfs']);
    $video_id = mysqli_real_escape_string($con, $_POST['video_ipfs']);
    $user_address = mysqli_real_escape_string($con, $_POST['user_address']);
    $user_type = mysqli_real_escape_string($con, $_POST['user_type']);
    $moreDetails = $VideoDetails . '/' . $video_uuid;
    $categoryName = mysqli_real_escape_string($con, $_POST['module']);
    // croud funding data start
    $is_crowdfunded = strip_tags($_POST['is_crowdfunding']);
    $project_address = strip_tags($_POST['project_address']);
    $project_creator = strip_tags($_POST['update_project_creater']);
    $minimum_pay = strip_tags($_POST['update_min_donation']);
    $target_amount = strip_tags($_POST['update_target_donation']);
    $project_uri_link = strip_tags($_POST['update_project_uri_link']);
    $is_crowdfunded = strip_tags($_POST['is_croudfunded']);
    $amount_in = strip_tags($_POST['amount_in']);
    // croud funding data end

    $query = "INSERT INTO `video_info`(`video_uuid`, `user_address`,`user_type`, `name`, `video_desc`, `thumbnail_ipfs`, `video_uid`,`module_uuid`,`module`,`more_details`, `from_time`, `from_browser`, `from_ip`,`is_croudfunded`, `project_address`, `project_creator`, `minimum_pay`, `target_amount`, `amount_in`, `project_uri_link`) VALUES ('$video_uuid','$user_address', '$user_type' ,'$name','$video_desc','$thumbnail_ipfs','$video_id','$category','$categoryName','$moreDetails', '$date_now','$from_browser','$from_ip','$is_crowdfunded','$project_address','$project_creator','$minimum_pay','$target_amount', '$amount_in', '$project_uri_link')";

    if (mysqli_query($con, $query)) {
        $data['status'] = 201;
        $data['success'] = "video uploaded successfully";
        echo json_encode($data);
    } else {
        $data['status'] = 301;
        $data['error'] = 'Error';
        echo json_encode($data);
    }
} else {
    $data['status'] = 404;
    $data['error'] = 'somthing went wrong';
    echo json_encode($data);
}
