<!DOCTYPE html>
<html>
    <head>
        <title>QUIZ</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="script/bootstrap.min.js"></script>
        <script src="script/jquery-3.7.1.min.js"></script>
        <?php include ("navbar.php");?>
    </head>
       
    <body>
        
        <div id="bore">
            <h1 class="d-flex">
                <span id="q">Q</span>
                <span id="u">U</span>
                <span id="i">I</span>
                <span id="z">Z</span>
            </h1>
            <button class="btn btn-danger" id="clique"><h3>COMMENCEZ</h3></button>
        </div>
        <?php include("templates/modalinfo.php"); ?>
    </body>
</html>

<script>
    //Premier utilisation de Jquery dans index.php
    //Pour animer l'interface
    $(document).ready(function() {
    var colors = ['#851010', '#040450', '#bbbb10']; // Couleur qui change
    var currentIndex = 0;
    function changeBorderColor() {
        $('#bore').css('border-width','80px');
        $('#bore').css('border-radius','10px');
        $('#bore').css('border-color', colors[currentIndex]);
        $('#bore').css('box-shadow', '0 0 600px ' + colors[currentIndex]);
        currentIndex = (currentIndex + 1) % colors.length;
    }
    changeBorderColor();
    setInterval(changeBorderColor, 5000);
});

    //Utilisation de ajax pour changer d'interface
    $(document).ready(function() {
    $("#clique").click(function() {
        $.ajax({
            url: "templates/choix.php", 
            type: "GET",
            success: function(response) {
                
                window.location.href = "templates/choix.php";
            },
            error: function(xhr, status, error) {
                
            }
        });
    });
});
</script>