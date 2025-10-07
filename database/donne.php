<?php
require_once('classe.php');

if(isset($_GET['theme_id'])) {
    $theme_id = $_GET['theme_id'];
    // Créez une instance de la classe question
    $question_manager = new question($conn);
    // Récupérez toutes les questions pour le thème donné
    $questions = $question_manager->toutquestion($theme_id);

    

    // Tableau pour stocker les questions et leurs réponses correspondantes
    $data = array();

    // Pour chaque question, récupérez ses réponses
    foreach($questions as $question) {
        // Créez une instance de la classe reponse
        $reponse_manager = new reponse($conn);
        // Récupérez toutes les réponses pour cette question
        $a = (int)$question['idqs'];
        $reponses = $reponse_manager->toutreponse($a);

        // Stockez la question et ses réponses dans le tableau de données
        $data[] = array(
            'question' => $question,
            'reponses' => $reponses
        );
    }

    // Retournez les données au format JSON
    echo json_encode($data);
}
if(isset($_GET['user'])){
    $nomuser = array();
    $valus = $_GET['user'];
    $ut = new utilisateur($conn);
    $user = $ut->username($valus);
    
    $nomuser[] = array(
        'use'=>$user,
    );
    echo json_encode($nomuser);
}
?>
