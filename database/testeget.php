<?php $a=1;?>
<!DOCTYPE html>
<html>
    <head>
        <title>TESTE</title>
    </head>
    <body>
        <div >Niveau : <span id="niveau"> 0 </span></div>
        <div >Score : <span id="score"> 0 </span></div>
        <div id="question"></div>
        <div class="row" id="reponses">
            <button class="btn col" id="rep1" onclick="alert('Ici');">Majunga</button>
            <button class="btn col" id="rep2">Antananarivo</button>
        </div>
        <div class="row" id="reponses">
            <button class="btn col" id="rep3">Toliara</button>
            <button class="btn col" id="rep4">Antsirabe</button>
        </div>
    </body>
</html>
<script src="quiz.js">
</script>
<script>
    const quiz = new Quiz(<?php echo $a;?>);
</script>