//Changement attribut element image du navbar
$(document).ready(function(){
    $('#inf').attr('src','../img/info.png');
    $('#rt').attr('src','../img/ret.png');
    $('#titre').removeClass('d-none');
    $('#rt').removeClass('d-none');
});

//Premet de revenir dans la page precedent
$(document).ready(function() {
    $('#rt').click(function() {
        
        
        window.history.back();
    });
});

