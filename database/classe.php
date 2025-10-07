<?php
 require("connexion.php");

 class theme{
    private $conn;

    public function __construct($conn){
        $this->conn = $conn;
    }

    public function ToutTheme(){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM theme");
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo "Erreur de recuperation".$e->getMessage();
            return false;
        }
    }
 }

 class question{
    private $conn;

    public function __construct($conn){
        $this->conn = $conn;
    }

    public function toutquestion($the){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM questions WHERE idtheme=$the");
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo "Erreur de recuperation".$e->getMessage();
            return false;
        }
    }
 }

 class reponse{
    private $conn;

    public function __construct($conn){
        $this->conn = $conn;
    }
    public function toutreponse($ida){
        
        try{
            $stmt = $this->conn->prepare("SELECT * FROM reponses WHERE idquest=$ida");
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo "Erreur de recuperation".$e->getMessage();
            return false;
        }
    }
 }

 class utilisateur{
    private $conn;
    public function __construct($conn){
        $this->conn = $conn;
    }
    public function username($use){
        try{
            $stmt = $this->conn->prepare("SELECT * FROM utilisateur WHERE nom=:nom");
            $stmt->bindParam(':nom',$use);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo "Erreur de recuperation".$e->getMessage();
            return false;
        }
    }
 }
?>