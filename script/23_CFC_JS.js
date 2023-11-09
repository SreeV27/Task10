
function changeBackgroundColor(liElement) {
    // Change the background color to your desired color
    // Reset background color for all li elements
    var allLiElements = document.querySelectorAll('.text li');
    allLiElements.forEach(function(li) {
      li.style.backgroundColor = '';
    });

    // Change background color for the clicked li element
    liElement.style.backgroundColor = '#FFF7C0';
}

