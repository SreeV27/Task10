<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link rel="stylesheet" href="style/common.css">
   
   <title>AJAX Validation</title>
</head>
<body>
   

   <div class=" pt-5 text-center">
      <p class="px-5"> 
        Create a subscribe form with first name, Email id text boxes.Near email id text box, 
        check button should be there.Below these text boxes submit button should be there. 
        By default the submit button should be disabled. While clicking that,
        check mail id in Database using Ajax. If the user entered the mail id there, 
        then it would give an error message like "Mail id is already there". 
        If not, enable the submit button. While clicking on the submit button it will insert first name & email id
        into the database.
      </p>
    </div>
    <center>
      <div>
        <form action="24_Ajax_validation.cfm" class="bg-warning-subtle mt-5 border w-50 m-auto p-5 "  method="post" onsubmit="">
            <ul>
                <li>
                    <label for="name">Enter name</label>
                    <input type="text" name="name" id="name"/>
                </li>
                <li class="mt-3 ps-3">
                    <label for="mail">Enter mail</label>
                    <input type="text" name="mail" id="mail"  onchange="validateEmail()">
                    <input type="checkbox" id="emailChecked" name="emailChecked"  onchange="checkBoxChanged()">
                    <br>
                    <span class="text-danger" id="mailError"></span>
                </li>
                <li class="mt-3">
                    <input type="submit" name="submit" id="submit">
                </li>
            </ul>


        </form>
      </div>
    </center>


     
    <script src="script/24_Ajax_validation.js"></script>
</body>

</html>