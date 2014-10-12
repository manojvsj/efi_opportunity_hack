<?php

include ('config.php');
function next_count(){
    include ('config.php');
      $data = $db->query("SELECT AUTO_INCREMENT
      FROM information_schema.TABLES
      WHERE TABLE_SCHEMA = 'efi'
      AND TABLE_NAME = 'counter'");
      foreach($data as $row) {
          $count= $row[0];
      }
      $stmt = $db->prepare('INSERT INTO counter VALUES(:count)');
      $stmt->bindParam(':count', $count);
      $stmt->execute();
    return $count;
}
?>