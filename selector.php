<?php

include "db.php";

$dotaz_rec = $connect->prepare("SELECT * FROM users WHERE prava='3'");
$dotaz_rec->execute();
$rec = $dotaz_rec ->fetchAll();
 echo "
   <select name='recenzenti'>";
foreach ($rec as $reci) {

    echo "<option value=". $reci['ID_user'].">". $reci['jmeno']."</option>"; 
     
     
     }
   echo "</select>";
     ?>
     
     