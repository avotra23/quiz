<?php 
    require_once('../database/classe.php');
    $themes = new theme($conn);
    $theme = $themes->ToutTheme();

    if(isset($_POST['nom']) && isset($_POST['theme'])){
        if($_POST['nom']!=" " && $_POST['theme']!=""){
            session_start();
            $_SESSION['user']=$_POST['nom'];
            $_SESSION['theme']=$_POST['theme'];
            //$_SESSION['niveau']=1;
            //$_SESSION['score']=0;
            header("location:quiz.php");
        }
        
    }
?>
<html>
    <head>
        <title>QUIZ</title>
        <link rel="stylesheet" href="../css/quiz.css">
        <?php include("loadcss.php");?>
        <?php include("../navbar.php");?>
    </head>
    <body>
        <form method="POST">
        <div data-aos="zoom-out" id="choixx" data-aos-duration="1000">
            <div>
                <h1 id="jr">Joueur</h1>
                <label for="nom" id="label">Entrer votre Nom</label>
                <input type="text" name="nom" class="form-control" placeholder="Votre nom">
            </div>
            <div>
                <h1 id="jr">Thème</h1>
                <label for="theme" id="label">Selectionner votre thème</label>
                <select name="theme" id="theme" class="form-select">
                    <option value="">~~Selectionner~~</option>
                    <?php foreach($theme as $th){ ?>
                    <option value="<?php echo $th['idth']?>"><?php echo $th['nom_theme']; ?></option>
                    <?php }?>
                </select>
            </div>
            <div>
                <input type="submit" class="btn btn-outline-warning" value="Jouer" id="bb">
            </div>
        </div>
        </form>
        <?php include("modalinfo.php"); ?>
    </body>
</html>
<script src="../script/querytout.js"></script>
</script>
<script>
    AOS.init({
        duration:10000
    });
</script>