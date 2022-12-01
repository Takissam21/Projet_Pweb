###############################################################################################################################
Matériel utilisé:

Base De Données: MySQL v8.0.27
Serveur local Apache v2.4.51 via Wampserver v3.2.6
Langages utilisés: HTML, CSS, PhP V7.4.26 : Manipulation de la base de données, JavaScript : fonctions de modifications dynamiques. 

###############################################################################################################################
Notes:

Le fichier projetpweb.sql" dans le dossier "SQL" contient la Base De Donnees appelee "projetpweb" 
qui elle-meme contient les tables "demande" qui contient les informations  sur les personnes 
ayant fait une demande d'inscription, ainsi que la table "event" qui contient les informations 
sur les evenements.

Les tables ont été extraites séparément dans les fichiers "demande.sql" et "event.sql" 
au cas où il y'aurait un problème avec le fichier de la BDD complète.

Les Evenements sont extraits de la table "event" et affichés sur le site web du plus récent 
au plus ancien. 

Certains evenements possèdent 4 photos, tandis que le reste n'en possède qu'une seule.

Lors de l'envoi automatique d'un mail vers MicroClub, l'application utilisée par défaut est l'appliction
"Courrier" de windows.

Si un des fichiers .php ne s'execut pas, veuillez redémarrer les services de WAMP et/ou actualiser la page phpMyAdmin

Si vous rencontrez le moindre problème, n'hésitez pas à contacter l'adresse mail: 
mounir.maouche.usthb@gmali.com

###############################################################################################################################
Envoi du message de confirmation:
Vous pouvez copier le fichier sendmail.ini dans votre dossier "sendmail" contenu dans le dossier wamp64
ainsi que le fichier phpForApache.ini dans le dossier "wamp64\bin\php\php7.4.26"

//

La démarche qui a été suivie pour la configuration:

-Il faut téléchager l'application sendmail grâce à ce lien: http://www.developerfiles.com/wp-content/uploads/2012/05/sendmail.zip
et extraire dans le dossier racine de WAMP

-Ensuite configurer le fichier sendmail.ini qui se trouve à l'intérieur et 
effectuer les modifications suivantes:*

smtp_server=smtp.gmail.com
smtp_port=587
error_logfile=error.log
debug_logfile=debug.log
auth_username=projtepweb@gmail.com
auth_password=projet_pweb2022
force_sender=projtepweb@gmail.com

-Puis configurer le fichier php.ini, que l'on peut trouver en cliquant sur l'icone de WAMP server puis "php" puis "php.ini"
et aller au niveau de "[mail function]" et  effectuer les modifications suivantes:*

SMTP = localhost
smtp_port = 587
sendmail_from ="projtepweb@gmail.com"
sendmail_path = "\"C:\wamp64\sendmail\sendmail.exe\" -t"

*Il faut redémarrer WAMPserver apès modification de php.ini
*Certaines lignes seront en commentaires, il faut supprimer le point-virgule.


