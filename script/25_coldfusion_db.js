$(document).ready(function () {
    let nxtBtn = document.querySelector("#nxtPage");
    nxtBtn.disabled = true;

 });
 
 function insertIntoDb(){

    var text = $("#text").val().trim();
    // alert(text);

    $.ajax({


        url:'cfc/tagColud.cfc?method=insertIntoDb',
        type: "POST",
       data: {
          value:text
 
       },
       success : function(data){
       alert(data);

       },
       error: function (jqXHR, textStatus, errorThrown) {
        console.error("AJAX Error: " + textStatus, errorThrown);
     }

    });


 }