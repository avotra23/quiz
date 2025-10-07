<?php 
DEFINE ("BDHOST","localhost");
DEFINE("DBUSER","root");
DEFINE("DBPASS","");
DEFINE("DBNAME","quiz");

$dsn = "mysql:host=localhost;dbname=quiz";
try{
	$conn = new PDO($dsn,DBUSER,DBPASS);
}
catch(PDOException $e){
	echo "ERREUR DE CONNEXION".$e->getMessage();
}
 ?>