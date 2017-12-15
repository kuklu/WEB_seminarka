<?php
session_start();
$menu="menu.php";
if(isset($_SESSION["username"]))  
 {  
  //include "log.inc.php"; - zobrazení, kdo je přihlášen
  
  // podle přihlášení vyber menu 
  switch ($_SESSION["prava"]) {
case "1" : $menu="menu_1.php"; break;
case "3" : $menu="menu_3.php"; break;
case "4" : $menu="menu_4.php"; break;
default : $menu="menu.php";
}  
   
   
   
 }  
 else  
 {  
   // echo "Nejste přihlášen - můžete se přihlásit <a href='login3.php'>zde</a>";
     // header("location:login3.php");  
 }  


// definování proměnných před přihlášením
$page = "uvod.php";
$nadpis = "Vítejte";
// vlastní stránky
?>

<!DOCTYPE html>

<html lang="cs-cz">
       <head>
               <meta charset="UTF-8" />
               <title>Geomatika v článcích</title>
               <link rel="stylesheet" href="style2.css" type="text/css" />
       </head>

       <body>
               <header>
                       <div id="logo">&nbsp;</div>
                       <h1>Geomatika v článcích</h1>
                           

               </header>
               
        
               <nav>
                       <ul>
                       <?php
                       //vložení menu
                          include "$menu";     
                               ?>
                       </ul>
               </nav>

               <br clear="both" />

               <div id="article-top">&nbsp;</div>

               <article>
                       <header>
                               <h1>Vítejte!</h1>
                       </header>
                       <section>
                       <?php
                       //vložení vlastního obsahu
                          include "$page";     
                               ?>
                               
                       </section>
                       <footer>&nbsp;</footer>
               </article>

               <footer>&copy; Jeřábková - ZČU</footer>
       </body>
</html>