<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Récupération de données avec JavaScript</title>
</head>
<body>
    <h1>Thèmes :</h1>
    <ul id="themesList"></ul>

    <script>
        // Fonction pour récupérer les données avec JavaScript
        function fetchData(url) {
            return fetch(url)
                .then(response => response.json())
                .catch(error => console.error('Erreur lors de la récupération des données :', error));
        }

        // Récupération des thèmes depuis la base de données avec PHP
        fetchData('prendredonne.php?type=themes')
            .then(themes => {
                const themesList = document.getElementById('themesList');
                themes.forEach(theme => {
                    const listItem = document.createElement('li');
                    listItem.textContent = `Nom du thème : ${theme.nom}`;
                    themesList.appendChild(listItem);
                });
            });

        // Récupération des questions pour un thème spécifique (par exemple, thème avec ID = 1)
        fetchData('prendredonne.php?type=questions&theme=1')
            .then(questions => {
                // Manipulation des données et affichage dans la page
                console.log('Questions pour le thème avec ID 1 :', questions);
            });

        // Récupération des réponses pour une question spécifique (par exemple, question avec ID = 1)
        fetchData('prendredonne.php?type=reponses&question=1')
            .then(reponses => {
                // Manipulation des données et affichage dans la page
                console.log('Réponses pour la question avec ID 1 :', reponses);
            });
    </script>
</body>
</html>
