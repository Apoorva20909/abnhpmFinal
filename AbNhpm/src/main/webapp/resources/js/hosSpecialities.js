$(function() {
$( "#submitHosData" ).click(function() {
	 
		var hosSpecialityData = [];
		var hosSpecialityJson = "";
		var tbl_len = $('#hosSpecmast tr').length - 1;
 			for (var i = 1; i <= tbl_len; i++) {
 				hosSpecialityJson = {
						"t008SpcltyId" : $("#m006SpcltyId" + i).text(),
						"m006SpcltyCd" : $("#m006SpcltyCd" + i).text(),
						"checkMe" :  $("#Checkme"+ i).val(),
						"t008AdmsnPrvsyr" : $("#t008AdmsnPrvsyr" + i).val(),
						"t008AdmsnBfrlstyr" : $("#t008AdmsnBfrlstyr" + i).val(),
						"t008HosId" :  $("#hosId").val(),
						
					}
				hosSpecialityData.push(hosSpecialityJson);
				 
			}
			  
		console.log("hosSpecialityData======" + hosSpecialityData);
		var myDataJSON = JSON.stringify(hosSpecialityData);
		console.log("hosSpecialityData======" + myDataJSON);

	  $.ajax({
            type: "POST",
            url: $('#contextPath').val() + "/saveHospitalSpecialities",
            data: myDataJSON,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
            	 document.getElementById("myBtn").click();
            	 $("#url").val($('#contextPath').val()+"/panCard");
            	 $("#resultmsg").text(data.msgDescr);
            }
        });

});

var specialKeys = new Array();
specialKeys.push(8); //Backspace
 
    $(".numeric").bind("keypress", function (e) {
        var keyCode = e.which ? e.which : e.keyCode
        var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
        $(".error").css("display", ret ? "none" : "inline");
        return ret;
    });
     
    
    $.ajax({
    	url: $('#contextPath').val() + "/getHospitalSpecialitiesOffered",		
    	type: 'GET',
		dataType: 'json',
		data:{
			"hosId": $("#hosId").val()
		},
		success: function (data) {
			 $('#hosSpecmast  tbody  tr').remove();
			var myDataJSON = JSON.stringify(data);
			console.log(myDataJSON);
			
			if (data != null && data != "") {
				for (var i = 0; i < data.length; i++) {
				    srno = i + 1 ; 
					tr = $('<tr/>');
				 	tr.append('<td id="m006SpcltyId' + srno + '" style="text-align:left;">' + data[i].m006SpcltyId + '</td>');	
					tr.append('<td id="m006SpcltyCd' + srno + '" style="text-align:left;">' + data[i].m006SpcltyCd + '</td>');	
					tr.append('<td id="m006SpcltyName' + srno + '" style="text-align:left;">' + data[i].m006SpcltyName + '</td>');
					tr.append('<td style="text-align: left;"><input type="checkbox" id="Checkme' + srno + '" value="0" class="form-check-input" onclick="checkme('+srno+')"/></td>');
					
					if(data[i].t008HosId == 0){
						tr.append('<td><input type="text" name="t008AdmsnPrvsyr" id="t008AdmsnPrvsyr' + srno + '" class = "numeric" disabled value=""></td>');	
						tr.append('<td><input type="text" name="t008AdmsnBfrlstyr" id="t008AdmsnBfrlstyr' + srno + '" class = "numeric" disabled value=""></td>');	
						tr.append('<td id="t008HosId' + srno + '" style="display: none;text-align:left;"></td>');	
					}else{
						
						if(data[i].t008AdmsnPrvsyr != 0 && data[i].t008AdmsnBfrlstyr != 0){
							tr.append('<td><input type="text" name="t008AdmsnPrvsyr" id="t008AdmsnPrvsyr' + srno + '" class = "numeric" disabled value="' + data[i].t008AdmsnPrvsyr + '"></td>');
							tr.append('<td><input type="text" name="t008AdmsnBfrlstyr" id="t008AdmsnBfrlstyr' + srno + '" class = "numeric" disabled value="' + data[i].t008AdmsnBfrlstyr + '"></td>');	
							$("#Checkme"+srno).val(2);
							$("#Checkme"+srno).is(":checked")
						}else{
							tr.append('<td><input type="text" name="t008AdmsnPrvsyr" id="t008AdmsnPrvsyr' + srno + '" class = "numeric" disabled value=""></td>');	
							tr.append('<td><input type="text" name="t008AdmsnBfrlstyr" id="t008AdmsnBfrlstyr' + srno + '" class = "numeric" disabled value=""></td>');	
						}
						tr.append('<td id="t008HosId' + srno + '" style="display: none;text-align:left;">' + data[i].t008HosId + '</td>');	
					}
					$('#hosSpecmast tbody').append(tr);
				}
				 
			}else{
				var tbl_len = $('#hosSpecmast tr').length - 1;
				for (var i = 1; i <= tbl_len; i++) {
				 $("#Checkme"+i).remove();
				}
			}
		}
	});    
    
});

function checkme(i){
 	if($("#t008AdmsnPrvsyr"+i).val() != "" && $("#t008AdmsnBfrlstyr"+i).val() != ""){
		
		if ($("#Checkme"+i).is(":checked")) {
			
			 alertify.confirm('',
		 				'Do you want change value !',
		 				function() {
				 			$("#t008AdmsnPrvsyr"+i).prop('disabled', false);
				 			$("#t008AdmsnBfrlstyr"+i).prop('disabled', false);
				 			$("#Checkme"+i).val(2);
		 				},
		 				function() {
		 					$("#t008AdmsnPrvsyr"+i).prop('disabled', true);
		 					$("#t008AdmsnBfrlstyr"+i).prop('disabled', true);
		 					$("#Checkme"+i).val(0);
		 					$("#Checkme"+i).prop("checked", false);
		 				}
		 					).set('labels', {ok:'Yes', cancel:'No'});
			
		} else {
			$("#t008AdmsnPrvsyr"+i).prop('disabled', true);
			$("#t008AdmsnBfrlstyr"+i).prop('disabled', true);
			$("#Checkme"+i).val(0);
		}
		
		
		
	}else{
		
		if ($("#Checkme"+i).is(":checked")) {
			
			$("#t008AdmsnPrvsyr"+i).prop('disabled', false);
			$("#t008AdmsnBfrlstyr"+i).prop('disabled', false);
			$("#Checkme"+i).val(1);
			
		} else {
			$("#t008AdmsnPrvsyr"+i).prop('disabled', true);
			$("#t008AdmsnBfrlstyr"+i).prop('disabled', true);
			$("#Checkme"+i).val(0);
		}
		
	}

}
