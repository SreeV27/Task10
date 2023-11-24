$(document).ready(function () {

    $("#add").click(function () {
       $("#pageName").val("");
       $("#pageDescription").val("");
 
 
       $("#save").click(function () {
 
          var pageName = $("#pageName").val();
          var pageDescription = $("#pageDescription").val();
 
 
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
 
 
    $(".edit").click(function () {
       var pageId = $(this).data("pageid");
       $.ajax({
 
          url: 'cfc/28_Simple_CMS.cfc?method=fetchPageDetailsUsingId',
 
 
          // Type of Request
          type: "POST",
          data: {
             id: pageId
 
          },
          success: function (data) {
 
 
             var pageName = $("#pageName").val($(data).find("field[name='PAGENAME'] string").text());
             var pageDescription = $("#pageDescription").val($(data).find("field[name='PAGEDESCRIPTION'] string").text());
             $('#exampleModal').modal('show');
 
          },
          error: function (jqXHR, textStatus, errorThrown) {
             console.error("AJAX Error: " + textStatus, errorThrown);
          }
 
 
       });
 
 
       $("#save").click(function () {
 
 
          var pageName = $("#pageName").val();
          var pageDescription = $("#pageDescription").val();
 
 
          $.ajax({
 
             url: 'cfc/28_Simple_CMS.cfc?method=updatePageDetails',
 
 
             // Type of Request
             type: "POST",
             data: {
                id: pageId,
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
 
         $(".view").click(function(){

            var pageId = $(this).data("pageid");
           
            $.ajax({

               url: 'cfc/28_Simple_CMS.cfc?method=fetchPageDetailsUsingId',


               // Type of Request
               type: "POST",
               data: {
                  id: pageId

               },
               success: function (data) {
                  $("#pageName").prop('disabled', true);
                  $("#pageDescription").prop('disabled', true);


                  var pageName = $("#pageName").val($(data).find("field[name='PAGENAME'] string").text());
                  var pageDescription = $("#pageDescription").val($(data).find("field[name='PAGEDESCRIPTION'] string").text());
                  $('#exampleModalUser').modal('show');

               },
               error: function (jqXHR, textStatus, errorThrown) {
                  console.error("AJAX Error: " + textStatus, errorThrown);
               }


            });



         });

 
 });
 





 
 function deleteRow(button) {
    // Get the row index of the clicked button
    var rowIndex = button.parentNode.parentNode.rowIndex;
 
    // Get the row based on the index
    var row = document.querySelector('table').rows[rowIndex];
 
    // Access values in other columns
    var id = row.cells[0].innerText; // Assuming the ID is in the first column
 
 
    $.ajax({
 
 
       url: 'cfc/28_Simple_CMS.cfc?method=deletePageDetails',
 
 
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