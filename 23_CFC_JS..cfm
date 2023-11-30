<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/23_CFC_JS.css">
      <title>Employment Application</title>
      
   </head>
   <body >
      <div class="bg-white mx-auto mt-4 container p-0">
         <h1 class="logo container">
            <a href="##" ><img src="assets/wflogo-padding.png" alt="logo"></a>
         </h1>
         <form  action="23_CFC_JS..cfm" class="data_form" enctype="multipart/form-data" onsubmit="valiateForm()" method="post">
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
                  <span id="positionError" class="text-danger"></span>
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">
                  Are you willing to relocate?                           
                  <span id="" class="text-danger">*</span>
                  <span id="relocateError" class="text-danger"></span><br>
                  <input  class="mt-2" type="radio" id="relocateYes" name="relocate" value="Yes">
                  <span class="fw-normal ps-2">Yes</span><br>
                  <input type="radio" id="relocateNo" name="relocate" value="No">
                  <span class="fw-normal ps-2">No</span>
                  <input type="text"  class="d-none" name="relocateResult" id="relocateResult"</input>
                  </label>         
               </li>
               <li >
                  <label class=" pb-1 ">
                  When can you start?     
                  <span id="" class="text-danger">*</span>
                  <span id="startDateError" class="text-danger"></span><br>
                  </label>  
                  <div class="d-flex">   
                     <span >
                     <input class="w-27  mt-1 py-1 ps-1" type="text" id="month" name="month" size="2" maxlength="2"><br>
                     <span class="fw-normal fs-11">MM </span>
                     </span>
                     <span class="ms-1 date_span">/</span>
                     <span class="ms-1">
                     <input class="w-27  mt-1 py-1 ps-1" type="text" id="date" name="date" size="2" maxlength="2"><br>
                     <span class="fw-normal fs-11 ms-1">DD </span>
                     </span>
                     <span class="ms-1 date_span">/</span>
                     <span class="ms-1">
                     <input class="w-42  mt-1 py-1 ps-1" type="text" id="year" name="year" size="4" minlength="4" maxlength="4"><br>
                     <span class="fw-normal fs-11 ms-1">YYYY </span>
                     </span>
                     <input  type="text" class=" mt-2 ms-1 calender" name="calender" id="calender" >
                  </div>
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">
                  Portfolio Web Site 
                  </label>   <br>      
                  <input class="w-100" type="text" name="portfolio" id="portfolio"  value="http://" oninput="updatePortfolio(this.value)">
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">                     
                  Attach a Copy of Your Resume			
                  </label>   <br>      
                  <input type="file" name="resume" id="resume" accept=".pdf, .doc, .docx">
                  <p  class="fw-normal mb-0 fs-11">Word or PDF Documents Only</p>
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">                     
                  Salary Requirements			
                  </label>   <br>   
                  <span class="d-flex">
                  <span class="fs-6 fw-normal">$</span>
                  <span>
                  <input class="salary  ms-1" type="text" size="10" name="dollar" id="dollar"><br>
                  <span class="fw-normal ms-1 fs-11">Dollars</span>
                  </span>
                  <span class="fs-6 ms-1 ">.</span>
                  <span>
                  <input class="salary cent ms-1" type="text" size="2" maxlength="2" name="cent" id="cent"> <br>
                  <span class="fw-normal ms-1 fs-11">Cents</span>          
                  </span>
                  <span id="salaryError" class="text-danger"></span><br>   
                  </span>                  
               </li>
               <li class="contact_info">
                  <span class="fw-normal fs-6 ">Your Contact Information</span>
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">                     
                  Name
                  </label> 
                  <span id="" class="text-danger">*</span>
                  <span id="nameError" class="text-danger"></span><br>  
                  <span class="d-flex">
                     <span> 
                        <input type="text" name="fname" size="8" id="fname"><br>
                        <span class="fw-normal fs-11 ">First</span>
                     </span>
                     <span class="ms-2">
                        <input type="text" name="lname" size="14" id="lname"><br>
                        <span class="fw-normal fs-11 ">Last</span>
                     </span>                     
                  </span>                 
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">                     
                  Email Address
                  </label> 
                  <span id="" class="text-danger">*</span>
                  <span id="mailError" class="text-danger"></span><br>   
                  <input class="w-100" type="text" name="mail" id="mail">                        
               </li>
               <li onfocus="changeBackgroundColor(this)" tabindex="0">
                  <label class="desc notranslate pb-1 " id="title17" for="Field17">                     
                  Phone
                  </label> 
                  <span id="" class="text-danger">*</span>
                  <span id="phnoError" class="text-danger"></span><br>      
                  <span class="d-flex">
                     <span>
                        <input  class="w-27"type="text" id="tel_1" name="tel_1"  maxlength="3"><br>
                        <span class="ms-1">###</span>
                        </span>
                        <span class="ms-1">-</span>    
                        <span>
                        <input  class="w-27 ms-1"type="text" id="tel_2" name="tel_2"  maxlength="3"><br>
                        <span class="ms-1">###</span>
                        </span>   
                        <span class="ms-1">-</span>
                        <span>
                        <input  class="w-33 ms-1" type="text" id="tel_3" name="tel_3"  maxlength="4"><br>
                        <span class="ms-1">####</span>
                     </span>  
                  </span>
               </li>
               <li>
                  <input class="p-1" type="submit" id="submit">                  
               </li>
            </ul>
         </form>
        
      </div>
      

      <div class="pt-3 text-center footer_clr">
         <!--- Footer--->
         <span class="fs-10">Powered By</span><br>
         <img src="assets/footerimg.png" alt="logo" width="100px" height="40px"><br>
         <span class="fs-13">See how easy it is to <a class="txt-primary">create a form</a></span>
      </div>
  
      <cfif structKeyExists(form,"position") >
             
         <cfinvoke component="cfc/23_CFC_JS" method="saveData" fileToUpload="form.resume">            
            <cfinvokeargument name="position" value="#form.position#">
            <cfinvokeargument name="relocate" value="#form.relocateResult#">

            <cfset createdDate=CreateDate(#form.year#,#form.month#,#form.date#)>           
           
            <!-- Format the date as needed -->
            <cfset formattedDate = dateFormat(createdDate, "mm-dd-yyyy")>
        
            <cfinvokeargument name="joinDate" value="#formattedDate#">
            <cfinvokeargument name="portfolio" value="#form.portfolio#">       
            <cfinvokeargument name="salary" value="#form.dollar#.#form.cent#">
            <cfinvokeargument name="fname" value="#form.fname#">
            <cfinvokeargument name="lname" value="#form.lname#">
            <cfinvokeargument name="email" value="#form.mail#">
            <cfinvokeargument name="phno" value="#form.tel_1##form.tel_2##form.tel_3#">   
         </cfinvoke>

      </cfif>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="script/23_CFC_JS.js"></script>
   </body>
</html>