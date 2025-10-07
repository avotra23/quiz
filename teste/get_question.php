<?php
// Connexion à la base de données
$servername = "localhost";
$username = "";
$password = "";
$dbname = "quiz";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Sélectionner une question aléatoire
$sql = "SELECT q.quest, r.reps, r.etat FROM questions q INNER JOIN reponses r ON q.idqs = r.idquest ORDER BY RAND() LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $question = array();
    while ($row = $result->fetch_assoc()) {
        $question['question'] = $row['quest'];
        $question['reponses'][] = array('reps' => $row['reps'], 'etat' => $row['etat']);
    }
    // Utiliser header pour indiquer que la réponse est JSON
    header('Content-Type: application/json');
    // Retourner les données au format JSON
    echo json_encode($question);
} else {
    echo json_encode(array("error" => "Aucune question trouvée"));
}
$conn->close();
?>
