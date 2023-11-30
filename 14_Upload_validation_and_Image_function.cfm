<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link rel="stylesheet" href="style/1_CFIF_ELSEIF_ELSE.css">
      <link rel="stylesheet" href="style/common.css">
      <script src="script/14_Upload_validation_and_Image_function.js"></script>
      <title>Image</title>
   </head>
   <body>
      <div class=" pt-5 text-center">
         <p class="px-5"> 
            Create a form with Image name text box , description text area & Image upload field. User can upload only small size jpg,png and gif files. Add validation to check uploaded file type & file size. User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. While clicking on the image name, it should redirect the user to details page which will show image name, description & original uploaded image.
         </p>
         <form action="14_Upload_validation_and_Image_function.cfm" method="post" class="mt-5 border p-4" enctype="multipart/form-data" onsubmit="return  validateImage()">
            <div class="d-flex justify-content-center">
               <label for="imageName">Image Name:</label>
               <input type="text" name="imageName"><br> 
            </div>
            <div class="mt-4 d-flex justify-content-center">
               <label for="imageDesc">Description:</label>
               <textarea id="imageDesc" name="imageDesc" rows="2" cols="23"></textarea><br>
            </div>
            <div class="mt-4 d-flex justify-content-end" >
               <label for="image">Image :</label>
               <input  class="w-72" type="file" id="image" name="image" accept=".png, .jpg, .jpeg" ><br> 
            </div>
            <span  class="text-danger" id="errorMsg"></span><br>
            <input type="submit" value="submit" id="submit">
         </form>

         <cfif  structKeyExists(form,"imageName")>
         
            <cfinvoke component="cfc/14_Upload_validation_and_Image_function" method="imageValidation" fileupload="form.image">
               <cfinvokeargument name="imageName" value="#form.imageName#">
               <cfinvokeargument name="imageDesc" value="#form.imageDesc#">
            
            </cfinvoke>
         </cfif>
      </div>
   </body>
</html>