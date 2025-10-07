<?php
require('../database/connexion.php');
$donner = file_get_contents("php://input");
$data = json_decode($donner,true);

$niveau = $data['niveau'];
$score = $data['score'];
$user= $data['utilise'];
if($niveau!=" "){
    $sql1 = "SELECT * FROM utilisateur where nom=:nom";
    $req = $conn->prepare($sql1);
    $req->bindParam(':nom',$user);
    $req->execute();
    $reps = $req->fetchAll(PDO::FETCH_ASSOC);
    if($reps){
        $up = "UPDATE utilisateur SET score=:score,niveau=:niveau WHERE nom=:nom";
        $req1 = $conn->prepare($up);
        $req1->bindParam(':score',$score);
        $req1->bindParam(':niveau',$niveau);
        $req1->bindParam(':nom',$user);
        $req1->execute();
        $reps1 = $req1->fetchAll(PDO::FETCH_ASSOC);
            echo "Mise a jour avec succès";
    }else{
        $sql = "INSERT INTO utilisateur(nom,score,niveau) VALUES (:nom,:score,:niveau)";
        try{
            $req = $conn->prepare($sql);
            $req->bindParam(':nom',$user);
            $req->bindParam(':score',$score);
            $req->bindParam(':niveau',$niveau);
            $req->execute();
            echo "Donne inserer";
        }catch(PDOException $e){
            echo "Erreur ".$e->getMessage();
        }
    }


    
}
else{
    echo "Mauvaise";
}
?>