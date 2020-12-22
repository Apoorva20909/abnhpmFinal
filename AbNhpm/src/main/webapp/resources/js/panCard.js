$(function() {
 	if ($("#isAlert").val() == 1) {
 		
 		 alertify.confirm('',
 				'Do you want add another hospital !',
 				function() {
 			var url = $('#contextPath').val() +'/hosRegistration';
 			window.location = url;
 				},
 				function() {
 							
 				}
 			).set('labels', {ok:'Yes', cancel:'No'});
	} 
  $("form[name='hosPan']").validate({
    
    rules: {
    	hosPan:{
    		 required: true,
    		 validatePanNo:true
    	}  
    },
     messages: {
    	 hosPan: {
        required: "Please enter panNo"
      },
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
   
 
});
 
