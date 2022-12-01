<?php 
  ///////////////VARIABLES, RECUPERATION DES DONNEES//////////////////////////////////////////
 
  $nom = $_POST['nom'];
  $prenom = $_POST['prenom'];
  $email = $_POST['email'];
  $matricule = $_POST['matricule'];
  $faculte = $_POST['faculte'];
  $niveau = $_POST['niveau'];
  $specialite = $_POST['specialite'];
  $telephone = $_POST['telephone'];
  $motif = $_POST['motif'];
  $objectif = $_POST['objectif'];
  $num = null;

////////////////VERIFICATION DES DONNES///////////////////////////////////////////////////

$err = 0;
$msg="";
  if(empty($nom) || empty($prenom) || empty($email) || empty($matricule) || empty($faculte) || empty($specialite) || empty($niveau) || empty($motif) || empty($objectif) || empty($telephone) ) {    
      $status = "Il manque un champ, veuillez ressayer.";
      $temp = "<h2>".$status."</h2> ";
      $msg = $msg.$temp ;
      $err = 1;
    } 
    else {
    if(!preg_match("/^[a-zA-Z-'\s]+$/", $nom)) {
      $status = "Entrez un nom valide";      
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
    }
    if(!preg_match("/^[a-zA-Z-'\s]+$/", $prenom)) {
      $status = "Entrez un prenom valide";
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
    }
    if(!preg_match("/^[a-zA-Z-'\s]+$/", $specialite)) {
      $status = "Entrez une specialite valide";
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
    } 
    if(!preg_match("/^[0-9]*$/", $telephone)) {
      $status = "Entrez un numero de telephone valide";
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
    }
    if(!preg_match("/^[0-9]*$/", $matricule)) {
      $status = "Entrez un matricule valide";
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
      }
    else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $status = "Entrez un email valide";
      $temp = "<h2>".$status."</h2>";
      $msg = $msg.$temp ;
      $err = 1;
    }
    
    #CONNEXION ET INSERTION DES DONNEES SI IL N'Y A AUCUN PROBLEME

    else {

        $dbHost = "localhost";
        $dbUser = "root";
        $dbPassword = "";
        $dbName = "projetpweb";
        
        try {
          $dsn = "mysql:host=" . $dbHost . ";dbname=" . $dbName;
          $pdo = new PDO($dsn, $dbUser, $dbPassword);
        } catch(PDOException $e) {
          echo "Erreur de Connexion: " .$e->getMessage();
        } 
      
      $sql = "INSERT INTO demande VALUES (:matricule, :nom, :prenom, :faculte, :niveau, :specialite, :email, :telephone, :motif, :objectif, :num )";

      $stmt = $pdo->prepare($sql);
      
      $stmt->execute(['matricule' => $matricule,'nom' => $nom, 'prenom' => $prenom, 'faculte' =>$faculte, 'niveau' => $niveau, 'specialite' => $specialite, 'email' => $email, 'telephone' => $telephone ,'motif' => $motif, 'objectif' => $objectif, 'num' => $num]);

      
      #ENVOI DU MAIL DE CONFIRMATION
      $dest = "mounircobrav8@gmail.com";

      $subject = "Confirmation Inscription MC";
      $body = "Votre Demande a bien été prise en charge.";
      $headers = "From: projtepweb@gmail.com";
      
      if (mail($dest, $subject, $body, $headers)) {
        $status = "Votre demande a bien été envoyée ";
      } else {
        echo "Failed to send email...";
      }
    }
  }
  
  #AFFICHAGE DANS LE CAS D'ERREURS
  
  if($err == 1){
    echo"<html>
            <head>
                <meta charset=UTF-8>
                <link rel=icon href=images/LogoMCBlanc.png>
                <link rel=stylesheet href=styles/styleInscription2.css>  
            </head>
            <body style=margin:130px>"
             .$msg."<a href=inscription.html> <button> Ressayer 
             </button> </a> </body> </html>";
  }
  else {
  #AFFICHAGE DE LA CONFIRMATION ET DES STATISTIQUES SI IL N'Y A AUCUNE ERREUR
  
  echo"<!DOCTYPE html>
<html lang=en>
<head>
    <meta charset=UTF-8>
    <link rel=icon href=images/LogoMCBlanc.png>
    <link rel=stylesheet href=styles/styleInscription2.css>
    
    <link href=https://fonts.googleapis.com/css2?family=Cairo:wght@200&family=Radio+Canada&display=swap rel=stylesheet> 
    <link href=https://fonts.googleapis.com/css2?family=Cantora+One&display=swap rel=stylesheeT> 
    
    <title>Inscription</title>
 </head>

<body>
  <header>
        <a href=index.html><img src=images/LogoMCJaune.png alt=LogoMCJaune.png class=head></a>

        <nav class=head>
            <ul id=menuPrinc>
                <li> <a href=index.html> Accueil</a> </li>
                <li> <a href=Presentation.html> Présentation </a> </li>
                <li> <a href=Evenements.php> Evènements </a> </li>
                <li> <a href=Inscription.html id=current> Inscription </a> </li>
                <li> <a href=Contact.html > Contact </a> </li>
            </ul>
        </nav>

        <style>
        h3{
          font-family: 'Times New Roman', Times, serif;
          text-decoration: underline;
        }
        td, th, table, tr{
          border: 1px solid black ; 
          background-color:rgb(4, 41, 79);
          color:white; 
        }
        table{
          background-color:yellow;
          font-family: 'Times New Roman', Times, serif;
        }
        #fclt, #nv{
          width:200px
        }
        </style>

    </header>  
<div id=main> 
<h1>".$status."</h1>
  <p> Une message de confirmation vous a été envoyé à l'adresse ".$email;
    
     
    $rqst = "select max(Num) as numero from demande";
    
    foreach ($pdo->query($rqst) as $row) {
    echo "<p> Vous êtes notre membre N°<span style=font-family: Times New Roman, Times, serif;>"
          .$row["numero"]."</span></p>";
    }
    
    ##############################################################################
    
    $requete = "select Faculte, count(Faculte) as Nbmembres from demande group by Faculte order by Nbmembres desc";

    $pdo->query($requete) ; 
    
    echo "<h3> Nombre de membres par faculté:</h3>";
    echo "<table>
            <tr> <th> Faculte </th> <th> NbMembres </th> </tr>";
    foreach ($pdo->query($requete) as $row) {
      #echo $row["Faculte"].": ".$row["Nbmembres"]."<br>";
      echo "<tr> <td id=fclt>".$row["Faculte"]."</td> <th id=nbm>".$row["Nbmembres"]."</th> </tr>";
    }
    echo"</table>";
    
    ################################################################################
    
    $requete2 = "select Niveau, count(Niveau) as Nbmembres from demande group by Niveau order by Nbmembres desc"; 
    $pdo->query($requete2) ; 
    
   
    echo "<br><h3>Nombre de membres par Niveau d'étude:</h3>"; 
    echo "<table>
            <tr> <th> Faculte </th> <th> NbMembres </th> </tr>";
  
    foreach ($pdo->query($requete2) as $row) {
        #echo $row["Niveau"].": ".$row["Nbmembres"]."<br>";
        echo "<tr> <td id=nv>".$row["Niveau"]."</td> <th id=nbm>".$row["Nbmembres"]."</th> </tr>";
    }

    echo"</table>";

    ################################################################################

    echo"</div>  
</body>
</html>";
  
 }
  
?>



