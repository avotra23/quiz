<ul>
<?php
 require('connexion.php');

$sql = "SELECT * FROM questions";
$reps = $conn->query($sql);
$val = $reps->fetchAll();
foreach($val as $i){
    
?>
<li><?php echo $i['idqs'];?>-<?php echo $i['quest'];?> </li>
<?php
}
?>
</ul>