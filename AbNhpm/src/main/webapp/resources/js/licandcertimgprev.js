
//on image viewer
function imgpreview_BPA(){
	document.getElementById("myBtn").click()
}
function imgpreview_FDCC(){
	document.getElementById("myBtn").click()
}


//on attachment applied
 function previewFile_BPA(input){
        var file = $("input[type=file]").get(0).files[0];
 
        if(file){
            var reader = new FileReader();
 
            reader.onload = function(){
                $("#previewImg").attr("src", reader.result);
            }
 
            reader.readAsDataURL(file);
        }
}
 
//on image viewer 2
 function imgpreview_BPA1(){
 	document.getElementById("myBtn").click()
 }
 function imgpreview_FDCC(){
 	document.getElementById("myBtn").click()
 }


 //on attachment applied 2
  function previewFile_BPA1(input){
         var file = $("input[type=file]").get(0).files[0];
  
         if(file){
             var reader = new FileReader();
  
             reader.onload = function(){
                 $("#previewImg").attr("src", reader.result);
             }
  
             reader.readAsDataURL(file);
         }
 }

 function previewFile_FDCC(input){
        var file = $("input[type=file]").get(0).files[0];
 
        if(file){
            var reader = new FileReader();
 
            reader.onload = function(){
                $("#previewImg").attr("src", reader.result);
            }
 
            reader.readAsDataURL(file);
        }
}