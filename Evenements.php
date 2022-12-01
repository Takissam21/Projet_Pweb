<?php 

$dbHost = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbName = "projetpweb";

try {
  $dsn = "mysql:host=" . $dbHost . ";dbname=" . $dbName;
  $conn = new PDO($dsn, $dbUser, $dbPassword);
} catch(PDOException $e) {
  echo "Erreur de Connexion: " .$e->getMessage();
}
      
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/styleEvenements.css">
    <link rel="icon" href="images/LogoMCBlanc.png">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200&family=Radio+Canada&display=swap" rel="stylesheet">         
    <link href="https://fonts.googleapis.com/css2?family=Cantora+One&display=swap" rel="stylesheet"> 

    <title>Evènements</title>
</head>
<body>
    <header>
        <a href="index.html"><img src="images/LogoMCJaune.png" alt="LogoMCJaune.png" class="head"></a>

        <nav class="head">
            <ul id="menuPrinc">
                <li> <a href="index.html" > Accueil</a> </li>
                <li> <a href="Presentation.html"> Présentation </a> </li>
                <li > <a href="Evenements.php" id="current"> Evènements </a> </li>
                <li> <a href="Inscription.html"> Inscription </a> </li>
                <li> <a href="Contact.html"> Contact </a> </li>
            </ul>
        </nav>
    </header>
    
    <div id="cont">


<?php   
  $requete = "select * from event order by date desc";
  $prep = $conn->prepare($requete);
  $prep->setFetchMode(PDO::FETCH_ASSOC);
  $prep->execute();
  $result = $prep->fetchAll();
  

if ($result !== false) {          
                              //Dans la BDD, les evenements ont soit
  foreach ( $result as $row) {  //une seule image, soit 4 images
    if($row["image2"] == null)
    echo "<div class=eventImageSimple>
              <div style= width: 70%;>";
    
    else  
      echo "<div class=eventImagesMulti>";

      echo "    <h1 class=eventTitle>".$row["titre"]."</h1> 
            <div class=title>
                <span class=propertyTitle> Date:&nbsp; </span>
                <span class=propertyText>".$row["date"]."</span>
                
            </div> <br>

            <div class=type>
                <span class=propertyTitle>Type:&nbsp;</span>
                <span class=propertyText>".$row["type"]."</span>
            </div> <br>
            
            <div class=description>
                <span class=propertyText>".$row["description"]."</span>
            </div>                
            <br>";

            if($row["image2"] == null) echo"</div>";
            
            if($row["image2"] == null) { 
              echo "<img id=seule src=".$row["image1"].">";
            }
            
            else {
              echo "<div class=images>";
              echo "<img src=".$row["image1"].">";              
              echo "<img src=".$row["image2"].">";
              echo "<img src=".$row["image3"].">";  
              echo "<img src=".$row["image4"]."></div>";
            
            }                    
            echo "</div><br>";
            
}
  
} else {
    echo 'The SQL query failed with error ';
}

?>
<script src="scripts/scriptEvenements.js"></script>
<button onclick="topFunction()" id="myBtn" title="Go to top"> <img src="images/baseline_arrow_upward_white_24dp2x.png" alt="arrow_upward"> </button>

</div>  
</body>
</html>







  








   
  