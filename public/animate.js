

$(document).ready(
    function() {
    	$("#about_short").click(function(){
    		$("#aboutInfo").fadeToggle();
    	})
        $("#gel").click(function() {
            $("#gelInfo").fadeToggle();
        });
        $("#snack").click(function() {
            $("#snackInfo").fadeToggle();
        })
        $("#pill").click(function() {
        	$("#pillInfo").fadeToggle();
        })    
    });


var imageElement = document.getElementById("imagePreview");

function changeImage(imageName){
	imageElement.src = imageName;	
}