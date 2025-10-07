<?php 
session_start();
if(isset($_SESSION['user'])){
    if($_SESSION['user']!=" " && $_SESSION['user']!=""){
        $a = $_SESSION['theme'];
        $use = $_SESSION['user'];
?>
<!DOCTYPE html>
<html>
    <head>
        
        <?php include("loadcss.php");?>
        <?php include("../navbar.php");?>
        <link rel="stylesheet" href="../css/quiz.css">
              

        
    </head>
    <body>   
        <audio src="../script/dg.mp3" class="d-none" id="audio"></audio>
        <div class="row" data-aos="zoom-out" data-aos-duration="1000">
            <div class="col-md-3" id="menu">
                
                    <div class="row">
                        <h3 style="text-align: center;" id="tt">MENU</h3>
                    </div>
                    <div class="row">
                        <div class="col" id="tb"> <h4>Joueur</h4></div>
                        <div class="col" id="ct"><h4><span id="joueur"><?php echo $use;?></span></h4></div>
                    </div>
                    <div class="row">
                        <div class="col" id="tb"><h4>Niveau</h4></div>
                        <div class="col" id="ct"><h4><span id="nv">0</span></h4></div>
                    </div>
                    <div class="row">
                        <div class="col" id="tb"><h4>Score</h4></div>
                        <div class="col" id="ct"><h4><span id="sc">0</span></h4></div>
                    </div>
                    <div class="d-flex" id="ctr">
                        <button class="btn btn-danger" id="bn">Exit</button>
                        <button class="btn btn-primary"id="bn">Reboot</button>
                    </div>
                
            </div>
            <div id="qr" class="col">
                <div class="row">
                    <h1 style="margin: auto;text-align:center;" id="question"></h1>
                </div>
                <div class="row" id="reponses">
                   <button class="btn col" id="rep1"></button>
                    <button class="btn col" id="rep2"></button>
                </div>
                <div class="row" id="reponses">
                    <button class="btn col" id="rep3"></button>
                    <button class="btn col" id="rep4"></button>
                </div>
            </div>
        <div id="chronometre" class="col-md-2">
                    <div class="row"><h1 style="color:white;margin-left:8%;">Time</h1></div>
                    <div id="buttons" class="row" style="width:60%;">
                        <button class="btn" id="btn1">1</button>
                        <button class="btn" id="btn2">2</button>
                        <button class="btn" id="btn3">3</button>
                        <button class="btn" id="btn4">4</button>
                        <button class="btn" id="btn5">5</button>
                    </div>
                    
        </div>
        </div>
        
        <?php include("modalinfo.php"); ?>
    </body> 
</html>
<script src="../script/querytout.js"></script>
<script src="../script/classquiz.js"></script>
<script src="../script/jquery-3.4.1.min.js"></script>
<script src="../script/sweetalert2.all.min.js"></script> 
<script>
    var param2 = "<?php echo $use;?>";
    var param1 = <?php echo $a;?>;
    
    const jeuquiz = new Quiz(param1,param2);
    AOS.init({
        duration:10000
    });
    
</script>

<?php
    }
    else{
        header("location:choix.php");
    }
}
    else{
        header("location:choix.php");
    }
?>