<?php

//require_once "commonutilities.php";

searchImg('C8.jpg');

function searchImg($inputFile) {
    global $db;

    $inputFile = 'uploads/'.$inputFile;
    
    $cmd = 'octave -qf --persist --path script_path --eval ("hack5("'.$inputFile.'")")';


    print $cmd;
    // $returnData = array();

    $commandData = array();
    exec($cmd, $commandData);

    print_r($commandData);

    // $stmt = $db->query("SELECT * FROM `user_uploads` WHERE img in ('uploads/efi_44_1413052531.jpg', 'uploads/efi_45_1413052554.jpg')");

    // while ($res = $stmt->fetch(PDO::FETCH_ASSOC)) {
    //     print_r($res['created']);
    // }
}

?>