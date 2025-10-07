// Création de la classe pour le jeu en global
class Quiz {

    //Constructeur des variables utilisée
    constructor(themeId,user) {
        this.themeId = themeId;
        this.user = user;
        this.joueur = document.getElementById('joueur');//Pour avoir l'endroit où ecrire le nom du joueur
        this.questionContainer = document.getElementById('question'); // Pour avoir l'endroit où écrire la question
        this.reponsesContainer = document.getElementById('reponses'); // Pour avoir l'endroit où écrire les réponses
        //this.nv = 0;
        this.niveau = document.getElementById('nv'); // Pour écrire le niveau
        //this.sc = 0;
        this.score = document.getElementById('sc'); // Pour écrire le score
        this.Questionpasser = []; // Pour stocker les questions déjà passées
        this.resp = []; // Pour stocker les réponses
        this.calcnv = 5;
        // Variables pour la manipulation du temps
        this.seconds = 15;
        this.timer = null;
        this.bt = 1;
        // Fin variables pour le temps
        this.boutonTemps = [];
        this.xhr = new XMLHttpRequest();
        // Appel des fonctions
        this.prendrecontenu();//Permet de prendre les contenues existant d'un utilisateur
        this.initquestion();// Charger la première question lors de l'initialisation
        this.controlbouton(); // Fonction de control des lique sur chaque reponses
        this.exrebo();// Fonction de control exit et reboot
    }


    //Fonction pour prendre les contenue de l'utilisateur
    prendrecontenu(){
        this.sc = 0;
        this.nv = 0;
        var prendsocre = new XMLHttpRequest();
        prendsocre.onreadystatechange = () => {
            if (prendsocre.readyState === XMLHttpRequest.DONE) {
                if (prendsocre.status === 200) {
                    var uti = JSON.parse(prendsocre.responseText);
                    if(uti.length>0){
                        var us = uti[0]['use'];
                        this.sc = parseInt(us[0].score);
                        this.nv = parseInt(us[0].niveau);
                    }
                    this.niveau.innerHTML=this.nv;
                    this.score.innerHTML=this.sc;
                }
            }
        }
        prendsocre.open('GET','../database/donne.php?user='+this.user);
        prendsocre.send();
    }
    //Fonction qui permet de recuperer les question, reponses d'un theme choisie
    initquestion() {
        this.joueur.innerHTML=this.user;
        this.xhr.onreadystatechange = () => {
            if (this.xhr.readyState === XMLHttpRequest.DONE) {
                if (this.xhr.status === 200) {
                    // Arrêter le chronomètre avant de charger une nouvelle question
                    clearInterval(this.timer);

                    const data = JSON.parse(this.xhr.responseText);
                    const max = data.length;
                    let i;
                    do {
                        i = Math.floor(Math.random() * max);
                        if(this.Questionpasser.length>=max){
                            this.Questionpasser = [];
                        }
                    } while (this.Questionpasser.includes(i));
                    this.Questionpasser.push(i);

                    this.questionContainer.innerHTML = data[i]['question'].quest;
                    const reponses = data[i]['reponses'];
                    for (let j = 0; j < reponses.length; j++) {
                        const valeurReponse = reponses[j].reps;
                        const etatReponse = reponses[j].etat;
                        this.resp[j] = { reponse: valeurReponse, etat: etatReponse };
                    }
                    for (let i = 1; i <= 4; i++) {
                        const id = 'rep' + i;
                        const buttonrep = document.getElementById(id);
                        buttonrep.innerHTML = this.resp[i - 1].reponse;
                        buttonrep.setAttribute('etat', this.resp[i - 1].etat);
                        buttonrep.style.backgroundColor = 'rgb(46, 64, 126)'; // Réinitialisation de la couleur
                        
                    }
                    // Redémarrer le chronomètre après avoir chargé la premiere question
                    this.chrono();
                } else {
                    console.error('Une erreur s\'est produite lors de la récupération des données.');
                }
                
            }
        };
        this.xhr.open('GET', '../database/donne.php?theme_id=' + this.themeId);
        this.xhr.send();
    }

    //Fonction pour ecouter le choix effectué par l'utilisateur
    controlbouton() {
        
        const buttons = document.querySelectorAll('#reponses button');
        buttons.forEach(button => {
            button.addEventListener('click', () => {
                const etat = button.getAttribute('etat');
                if (etat === '1') {
                    this.sc++;
                    button.style.backgroundColor = "green";
                    if(this.sc % 5==0){
                        this.nv++;
                        Swal.fire({
                            type:'success',
                            title:'Niveau',
                            text : 'Vous êtes montez de niveau',
                            confirmButtonColor:'#d33',
                            confirmButtonText:'Ok',
                        })
                        var xml = new XMLHttpRequest();
                        xml.open("POST","teste.php",true);
                        xml.onreadystatechange=function (){
                            if (xml.readyState === XMLHttpRequest.DONE) {
                                if (xml.status === 200) {
                                    alert(xml.responseText);
                                }
                                else{
                                alert("erreur d'envoie");
                            }  
                            }
                                      
                        }
                        var data = {
                            niveau:this.nv,
                            utilise:this.user,
                            score:this.sc};
                        xml.send(JSON.stringify(data));
                        
                    }
                    this.niveau.innerHTML = this.nv;
                    this.score.innerHTML = this.sc;
                } else {
                    button.style.backgroundColor = "red";
                }
                setTimeout(() => {
                    this.initquestion(); // Charger une nouvelle question après un délai
                    //Reinitialisation Du Chronometre
                    this.seconds = 15;
                    this.bt = 1;
                    for (var i = 1; i <= 5; i++) {
                        document.getElementById('btn' + i).style.backgroundColor = 'rgb(46, 64, 126)';
                    }
                    //RDC
                }, 1000); // Délai pour montrer la couleur de la réponse
            });
        });
    }

    //Fonction pour maitriser le temps
    chrono() {
        // Démarrage du chronomètre
        this.timer = setInterval(() => {
            this.seconds--;
            if (this.seconds % 3 === 0) {
                document.getElementById('btn' + this.bt).style.backgroundColor = 'yellow';
                this.bt++;
            }
            if (this.seconds < 0) {
                clearInterval(this.timer);
                for (var i = 1; i <= 5; i++) {
                    document.getElementById('btn' + i).style.backgroundColor = 'red';
                }
                //alert("Temps écoulé");
                //Style d'alert
                Swal.fire({
                    type:'warning',
                    title:'Alarme',
                    text : 'Temps écoulé',
                    confirmButtonColor:'#d33',
                    confirmButtonText:'Ok',
                })
                //Fin style alert
                setTimeout(() => {
                    this.initquestion(); // Charger une nouvelle question
                    this.seconds = 15; // Réinitialiser le temps à 15 secondes
                    this.bt = 1;
                    for (var i = 1; i <= 5; i++) {
                        document.getElementById('btn' + i).style.backgroundColor = 'rgb(46, 64, 126)';
                    }
                }, 1000); // Délai pour montrer la couleur de la réponse
            }
        }, 1000);
    }

    //Fonction pour exit et reboot
    exrebo(){
        // Sélectionnez tous les boutons à l'intérieur de la div avec l'ID "qr"
        const buttoncontrol = document.querySelectorAll('#ctr button');
        buttoncontrol.forEach(button => {
            // Ajoutez un écouteur d'événements onclick à chaque bouton
            button.addEventListener('click', function() {
                if(button.innerText=="Exit"){
                    
                    window.location.href="choix.php";
                    
                }else{
                    this.sc=0;
                    this.nv=0;
                    
                    
                }
                this.niveau.innerHTML = this.nv;
                this.score.innerHTML = this.sc;
            });
        });
    }
}
