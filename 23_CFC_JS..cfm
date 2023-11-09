<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link rel="stylesheet" href="style/23_CFC_JS.css">
   <script src="script/23_CFC_JS.js"></script>
   <title>Employment Application</title>
</head>
   <body >
      <div class="bg-white mx-auto mt-4 container p-0">

         <h1 class="logo container">
               <a href="##" ><img src="assets/wflogo-padding.png" alt="logo"></a>
         </h1>
         
         <form  class="data_form" enctype="multipart/form-data" onsubmit="valiateForm()">
            <div class="border-bottom header" >
               <h5 class="fw-normal header-margin header-font">Employment Application</h5>
               <span class=" fs-13 header-font">Infinity Box Inc.</span>
            </div>

               <ul class="text">

                  <li onfocus="changeBackgroundColor(this)" tabindex="0">
                     <label class="desc notranslate pb-1 " id="title17" for="Field17">
                        Which position are you applying for?
                              <span id="" class="text-danger">*</span>
                           </label>
                           <select class="w-50" name="position" id="position">
                              <option selected="selected" value=""></option>
                              <option value="Interface Designer">
                                 Interface Designer
                              </option>
                              <option value="Software Engineer">
                                 Software Engineer
                              </option>
                              <option value="System Administrator">
                                 System Administrator
                              </option>
                              <option value="Office Manager">
                                 Office Manager
                              </option>

                           </select>


                  </li>

                  <li onfocus="changeBackgroundColor(this)" tabindex="0">
                     <label class="desc notranslate pb-1 " id="title17" for="Field17">
                           Are you willing to relocate?                           
                           <span id="" class="text-danger">*</span><br>

                           <input  class="mt-2" type="radio" id="yes" name="relocate" value="Yes">
                           <span class="fw-normal ps-2">Yes</span><br>
                        
                           <input type="radio" id="no" name="relocate" value="No">
                           <span class="fw-normal ps-2">No</span>
                           
                     </label>         
                  </li>


                  <li >
                     <label class="desc notranslate pb-1 " id="title17" for="Field17">
                           When can you start?     
                           <span id="" class="text-danger">*</span><br> 
                           <div class="d-flex">   
                              <span >
                                 <input class="w-27  mt-1 py-1 ps-1" type="text" name="month" size="2" maxlength="2"><br>
                                 <span class="fw-normal fs-11">MM </span>
                              </span>
                              <span class="ms-1 date_span">/</span>
                              <span class="ms-1">
                                 <input class="w-27  mt-1 py-1 ps-1" type="text" name="date" size="2" maxlength="2"><br>
                                 <span class="fw-normal fs-11 ms-1">DD </span>
                              </span>
                              <span class="ms-1 date_span">/</span>
                              <span class="ms-1">
                                 <input class="w-42  mt-1 py-1 ps-1" type="text" name="year" size="4" minlength="4" maxlength="4"><br>
                                 <span class="fw-normal fs-11 ms-1">YYYY </span>
                              </span>
                              <img  class="mt-2 ms-1" src="assets/calendar.png" width="16" height="16" border="0" alt="datePicker" id="datePickerImage" >
                              <input type="text" size=15 id="popupDatepicker">
                              
                               
                              </div>
                           

                           
                     </label>         
                  </li>




               </ul>

         </form>


      </div>


   

     
      
   </body>
</html>