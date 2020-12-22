$(function() {
 	if ($("#isAlert").val() == 1) {
		document.getElementById("myBtn").click();
	} 
    $("#rohiniId").prop('disabled', true);
    
	$.ajax({
		url : $('#contextPath').val() +'/getHospitalParentTypeDetails',
		type : "GET",
		dataType : "json",
		success : function(data) {
			var ajaxCallData = JSON.stringify(data);
				$('#hosParentTyp').append($("<option></option>").attr("value","").text("Select")); 
				$.each(data, function(i, data) {
				$('#hosParentTyp').append('<option value="' + data.m002SyscdVal + '">' + data.m002Dscrptn
						+ '</option>');
			});
		},
		error : function(error) {
			console.log(`Error ${error}`);
		}

	});
	
	$.ajax({
		url : $('#contextPath').val() +'/getHospitalTypeDetails',
		type : "GET",
		dataType : "json",
		success : function(data) {
			var ajaxCallData = JSON.stringify(data);
			$('#hosType').append($("<option></option>").attr("value","").text("Select")); 
			$.each(data, function(i, data) {
				$('#hosType').append('<option value="' + data.m002SyscdVal + '">' + data.m002Dscrptn
						+ '</option>');
			});
		},
		error : function(error) {
			console.log(`Error ${error}`);
		}

	});
	
	
  $("form[name='hosregistration']").validate({
    
    rules: {
      
    	hosName: "required",
    	cntctPersonName: "required",
    	hosLocName: "required",
    	rohiniId: "required",
    	//Checkme: "required",
    	hosPan:{
    		 required: true,
    		 validatePanNo:true
    	}  ,
    	hosState: "required",
        hosDistrict: "required",
        hosParentTyp: "required",
        hosType: "required",
        cntctPersonMob: {
            required: true,
            minlength: 10,
            validateMobileNo: true
        },
        cntctPersonEmil: {
            required: true,
            email: true
      },
      captcha: "required",
    },
     messages: {
      hosName: "Please enter your Hospital name",
      cntctPersonName: "Please enter your contact name",
      cntctPersonMob: {
        required: "Please enter mobile no",
        minlength: "Please enter proper mobile no"
      },
      cntctPersonEmil: "Please enter a valid email address",
      captcha: "Please enter a captcha",
      hosState: "Please select state",
      hosDistrict: "Please select district",
      hosParentTyp: "Please select hosParentTyp",
      hosType: "Please select hosType",
      rohiniId:"Please enter ROHINI ID",
    },
    submitHandler: function(form) {
      form.submit();
    }
  });
  
  
  
  $("#Checkme").click(function() {
	  if ($("input[type=checkbox]").is(":checked")) {
		  $("#Checkme").val(1);
 		    $("#rohiniId").prop('disabled', false);
 		} else {
 			  $("#Checkme").val(0);
 			  $("#rohiniId").prop('disabled', true);
 		}
 });
 
});
var specialKeys = new Array();
specialKeys.push(46); //Delete
specialKeys.push(36); //Home
specialKeys.push(35); //End
specialKeys.push(37); //Left
specialKeys.push(39); //Right
function IsAlphaNumeric(e) {
    var keyCode = e.keyCode == 0 ? e.charCode : e.keyCode;
    var ret = ((keyCode >= 48 && keyCode <= 57) || (keyCode >= 65 && keyCode <= 90) || (keyCode >= 97 && keyCode <= 122) || keyCode == 8 || keyCode == 32 || keyCode == 46 || keyCode == 36 ||(specialKeys.indexOf(e.keyCode) != -1 && e.charCode != e.keyCode));
    document.getElementById("error").style.display = ret ? "none" : "inline";
    return ret;
}
