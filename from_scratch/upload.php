<?php
    include ('commonutilities.php');
    extract($_POST);
    //echo print_r($img_title);exit;
    $time=time();
    if(isset($submit)){
        
        $allowedExts = array("gif", "jpeg", "jpg", "png");
        $temp = explode(".", $_FILES["file"]["name"]);
        $extension = end($temp);
    
          if ($_FILES["file"]["error"] > 0)
            {
            echo "Error: " . $_FILES["file"]["error"] . "<br>";
            }
          else
            {
              $ext = pathinfo($_FILES["file"]["name"], PATHINFO_EXTENSION);
              $fileName = "uploads/" .'efi_'.next_count().'_'.time().'.'.$ext;
               move_uploaded_file($_FILES["file"]["tmp_name"], $fileName);
            }
    }
    
    $stmt = $db->prepare('INSERT INTO user_uploads(title,description,img,tags,highlight,created,status) VALUES(:title,:desc,:img,:tags,:highlight,:created,:status)');
    $stmt->execute(array(':title'=>$img_title,':desc'=>$ïmg_description,':img'=>$fileName,':tags'=>$img_tag,':highlight'=>$img_highlight,':created'=>$time,':status'=>1));
    
  
?>