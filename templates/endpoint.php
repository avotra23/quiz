<?php

include '../database/donnée.php';

if(isset($_POST['themeId'])) {
    $themeId = $_POST['themeId'];

    // Créer des instances des classes question et reponse
    $question = new question($conn);
    $reponse = new reponse($conn);

    // Récupérer les questions
    $questions = $question->toutquestion(1);

    // Tableau pour stocker les questions et réponses
    $data = array();

    // Traitement des questio   ns
    foreach($questions as $q) {
        $data['question'] = '<div>' . $q['quest'] . '</div>';

        // Récupérer les réponses pour chaque question
        $reponses = $reponse->toutreponse($q['idqs']);

        // Traitement des réponses
        $reponsesArray = array();
        $i = 0;
        foreach($reponses as $r) {
            $reponsesArray[$i] = $r['reps'];
            $i++;
        }
        
        $data['reponses'] = $reponsesArray;
    }

    // Renvoyer les données au format JSON
    echo json_encode($data);
} else {
    // Si 'idtheme' n'est pas défini, renvoyer une erreur
    echo "Erreur : ID du thème non défini.";
}
?>
