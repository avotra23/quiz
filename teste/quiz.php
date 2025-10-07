<!DOCTYPE html>
<html>
<head>
    <title>Quiz</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>ICI</h1>
<div id="question-container">
    <h2 id="question-text"></h2>
    <div id="answers-container"></div>
</div>



</body>
</html>
<script>
    $(document).ready(function() {
        // Fonction pour charger une nouvelle question
        function loadQuestion() {
            $.ajax({
                url: 'get_question.php',
                type: 'GET',
                success: function(data) {
                    // Traiter les données JSON reçues
                    var question = JSON.parse(data);
                    updateQuestion(question);
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
            });
        }

        // Fonction pour mettre à jour le contenu de la page avec la nouvelle question et ses réponses
        function updateQuestion(question) {
            $('#question-text').text(question.question);
            $('#answers-container').empty();
            question.reponses.forEach(function(reponse) {
                var button = $('<button class="answer">' + reponse.reps + '</button>');
                button.data('etat', reponse.etat);
                $('#answers-container').append(button);
            });
        }

        // Écouter le clic sur une réponse
        $(document).on('click', '.answer', function() {
            var selectedAnswer = $(this).text();
            var isCorrect = $(this).data('etat');
            // Traiter la réponse sélectionnée (vérifier si c'est la bonne réponse, etc.)
            // Vous pouvez ajouter ici votre propre logique pour gérer les réponses
            if (isCorrect) {
                alert('Bonne réponse !');
            } else {
                alert('Mauvaise réponse !');
            }
            // Charger une nouvelle question
            loadQuestion();
        });

        // Charger une question au chargement de la page
        loadQuestion();
    });
</script>
