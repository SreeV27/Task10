function validateImage(){
   
    var imageInput = document.getElementById("image");
    var selectedImage = imageInput.files[0];

    if (selectedImage)
     {
        var maxSize = 1 * 1024 * 1024; // 1 MB in bytes

        if (selectedImage.size > maxSize) {
            $("#errorMsg").text("Image size exceeds 1 MB. Please select a smaller image.");
            return false;           
            
        }
        else{
            $("#errorMsg").text(" ");
            return true;           
        }
    }
}



