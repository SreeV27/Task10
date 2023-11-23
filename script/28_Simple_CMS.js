$(document).ready(function(){

    $("#add").click(function(){
        $("#pageName").val("");
        $("#pageDescription").val("");



        $("#save").click(function(){

            var pageName=$("#pageName").val();
            var pageDescription=$("#pageDescription").val();
        
        
            $.ajax({
                    
                url: 'cfc/28_Simple_CMS.cfc?method=addPageDetails',
         
         
                // Type of Request
                type: "POST",
                data: {
                    pageName: pageName,
                    pageDescription: pageDescription
        
                },
                success: function (data) {
                  $('#exampleModal').modal('hide');
                  $("#pageName").val("");
                  $("#pageDescription").val("");
                  location.reload(true); 
                  
        
                },
                error: function (jqXHR, textStatus, errorThrown) {
                   console.error("AJAX Error: " + textStatus, errorThrown);
                }
        
        
            });

        });



    });




    



});







function deleteRow(button) {
    // Get the row index of the clicked button
    var rowIndex = button.parentNode.parentNode.rowIndex ;

     // Get the row based on the index
     var row = document.querySelector('table').rows[rowIndex];

     // Access values in other columns
     var id = row.cells[0].innerText;  // Assuming the ID is in the first column


     $.ajax({

            
        url:'cfc/28_Simple_CMS.cfc?method=deletePageDetails',
 
 
        // Type of Request
        type: "POST",
        data: {
            id: id           

        },
        success: function (data) {
         
          location.reload(true); 
          

        },
        error: function (jqXHR, textStatus, errorThrown) {
           console.error("AJAX Error: " + textStatus, errorThrown);
        }




    });




   
}