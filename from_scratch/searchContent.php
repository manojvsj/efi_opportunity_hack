<?php
require_once "commonutilities.php";

$ds          = DIRECTORY_SEPARATOR;  //1
$storeFolder = "uploads";
 
if (!empty($_FILES)) {
     
    $tempFile = $_FILES['file']['tmp_name'];          //3             
      
    $targetPath =  $storeFolder . $ds;  //4
     
    $targetFile =  $targetPath. $_FILES['file']['name'];  //5
 
    move_uploaded_file($tempFile,$targetFile); //6

    searchImg($targetFile);
    
} 


function searchImg($inputFile) {
    global $db;

    // $cmd = "hack.exe " . $inputFile;

    // $returnData = array();

    // $commandData = array();
    // exec($cmd, $commandData);

    // print_r($commandData);

    $stmt = $db->query("SELECT *, FROM_UNIXTIME(created, '%Y-%m-%dT%k:%i:%sZ') as created FROM `user_uploads` WHERE img in ('uploads/efi_44_1413052531.jpg', 'uploads/efi_45_1413052554.jpg')");

    while ($res = $stmt->fetch(PDO::FETCH_ASSOC)) {
        print_r($res);
    }
}

?>   
