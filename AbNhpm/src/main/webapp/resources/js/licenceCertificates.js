// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='financialDetails']").validate({
    // Specify validation rules
    rules: {
    	//Building Plan Approval
      	CirtificateNo_1_BPA: "required",
	  	IssueDate_1_BPA: "required",
		ExpiryDate_1_BPA: "required",
		BI_File1:"required",
		//Fire Department Clearance Cerrtificate
		CirtificateNo_1_FDCC: "required",
	  	IssueDate_1_FDCC: "required",
		ExpiryDate_1_FDCC: "required",
		//Pollution Control Board Certificate
		CirtificateNo_1_PCBC: "required",
	  	IssueDate_1_PCBC: "required",
		ExpiryDate_1_PCBC: "required",
		//Lift Licence
		CirtificateNo_1_LL: "required",
	  	IssueDate_1_LL: "required",
		ExpiryDate_1_LL: "required",
		
		//Occupancy Certificate
		CirtificateNo_2_OC: "required",
	  	IssueDate_2_OC: "required",
		ExpiryDate_2_OC: "required",
		//Opium Licence
		CirtificateNo_2_OL: "required",
	  	IssueDate_2_OL: "required",
		ExpiryDate_2_OL: "required",
			//Hospital Registration Certificate
		CirtificateNo_2_HRC: "required",
	  	IssueDate_2_HRC: "required",
		ExpiryDate_2_HRC: "required",
		//State Medical Council/Association Registration
		CirtificateNo_2_SMCR: "required",
	  	IssueDate_2_SMCR: "required",
		ExpiryDate_2_SMCR: "required",
		//Morphine Licence
		CirtificateNo_2_ML: "required",
	  	IssueDate_2_ML: "required",
		ExpiryDate_2_ML: "required",
		//PCPNDT Act Registration
		CirtificateNo_2_PAR: "required",
	  	IssueDate_2_PAR: "required",
		ExpiryDate_2_PAR: "required",
		//Surgical Spirit Licence
		CirtificateNo_2_SSL: "required",
	  	IssueDate_2_SSL: "required",
		ExpiryDate_2_SSL: "required",
		//Bio-Medical Waste Management
		CirtificateNo_2_BMWM: "required",
	  	IssueDate_2_BMWM: "required",
		ExpiryDate_2_BMWM: "required",
		//AERB
		CirtificateNo_2_A: "required",
	  	IssueDate_2_A: "required",
		ExpiryDate_2_A: "required",
		//TLD Badge
		CirtificateNo_2_TB: "required",
	  	IssueDate_2_TB: "required",
		ExpiryDate_2_TB: "required",
		
		//Pharmacy Licence/Tie up
		CirtificateNo_3_PL: "required",
	  	IssueDate_3_PL: "required",
		ExpiryDate_3_PL: "required",
		//BloodBank Licence/Tie-up Letter
		CirtificateNo_3_BL: "required",
	  	IssueDate_3_BL: "required",
		ExpiryDate_3_BL: "required",
		//Ambulance Registration Certificate/Tie-up Letter
		CirtificateNo_3_ARCL: "required",
	  	IssueDate_3_ARCL: "required",
		ExpiryDate_3_ARCL: "required",
		
		
    },
    // Specify validation error messages
    messages: {
		//Building Plan Approval
      	CirtificateNo_1_BPA: "Please Enter Certificate No. for Building Plan Approval",
	  	IssueDate_1_BPA: "Please Enter Date of Issue for Building Plan Approval",
		ExpiryDate_1_BPA: "Please Enter Date of Expiry for Building Plan Approval",
		//Fire Department Clearance Cerrtificate
		CirtificateNo_1_FDCC: "Please Enter Certificate No. for Fire Department Clearance Cerrtificate",
	  	IssueDate_1_FDCC: "Please Enter Date of Issue for Fire Department Clearance Cerrtificatee",
		ExpiryDate_1_FDCC:  "Please Enter Date of Expiry for Fire Department Clearance Cerrtificate",
		//Pollution Control Board Certificate
		CirtificateNo_1_PCBC: "Please Enter Certificate No. for Pollution Control Board Certificate",
	  	IssueDate_1_PCBC: "Please Enter Date of Issue for Pollution Control Board Certificate",
		ExpiryDate_1_PCBC:  "Please Enter Date of Expiry for Pollution Control Board Certificate",
		//Lift Licence
		CirtificateNo_1_LL: "Please Enter Certificate No. for Lift Licence",
	  	IssueDate_1_LL: "Please Enter Date of Issue for Lift Licence",
		ExpiryDate_1_LL:  "Please Enter Date of Expiry for Lift Licence",
		
		//Occupancy Certificate
		CirtificateNo_2_OC: "Please Enter Certificate No. for Occupancy Certificate",
	  	IssueDate_2_OC: "Please Enter Date of Issue for Occupancy Certificate",
		ExpiryDate_2_OC: "Please Enter Date of Expiry for Occupancy Certificate",
		//Opium Licence
		CirtificateNo_2_OL: "Please Enter Certificate No. for Opium Licence",
	  	IssueDate_2_OL: "Please Enter Date of Issue for Opium Licence",
		ExpiryDate_2_OL:  "Please Enter Date of Expiry for Opium Licence",
		//Hospital Registration Certificate
		CirtificateNo_2_HRC: "Please Enter Certificate No. for Hospital Registration Certificate",
	  	IssueDate_2_HRC: "Please Enter Date of Issue for Hospital Registration Certificate",
		ExpiryDate_2_HRC:  "Please Enter Date of Expiry for Hospital Registration Certificate",
		//State Medical Council/Association Registration
		CirtificateNo_2_SMCR: "Please Enter Certificate No. for State Medical Council/Association Registration",
	  	IssueDate_2_SMCR: "Please Enter Date of Issue for State Medical Council/Association Registration",
		ExpiryDate_2_SMCR: "Please Enter Date of Expiry for State Medical Council/Association Registration",
		//Morphine Licence
		CirtificateNo_2_ML: "Please Enter Certificate No. for Morphine Licence",
	  	IssueDate_2_ML: "Please Enter Date of Issue for Morphine Licence",
		ExpiryDate_2_ML: "Please Enter Date of Expiry for Morphine Licence",
		//PCPNDT Act Registration
		CirtificateNo_2_PAR: "Please Enter Certificate No. for PCPNDT Act Registration",
	  	IssueDate_2_PAR: "Please Enter Date of Issue for PCPNDT Act Registration",
		ExpiryDate_2_PAR: "Please Enter Date of Expiry for PCPNDT Act Registration",
		//Surgical Spirit Licence
		CirtificateNo_2_SSL: "Please Enter Certificate No. for Surgical Spirit Licence",
	  	IssueDate_2_SSL: "Please Enter Date of Issue for Surgical Spirit Licence",
		ExpiryDate_2_SSL: "Please Enter Date of Expiry for Surgical Spirit Licence",
		//Bio-Medical Waste Management
		CirtificateNo_2_BMWM: "Please Enter Certificate No. for Bio-Medical Waste Management",
	  	IssueDate_2_BMWM: "Please Enter Date of Issue for Bio-Medical Waste Management",
		ExpiryDate_2_BMWM: "Please Enter Date of Expiry for Bio-Medical Waste Management",
		//AERB
		CirtificateNo_2_A: "Please Enter Certificate No. for AERB",
	  	IssueDate_2_A: "Please Enter Date of Issue for AERB",
		ExpiryDate_2_A: "Please Enter Date of Expiry for AERB",
		//TLD Badge
		CirtificateNo_2_TB: "Please Enter Certificate No. for TLD Badge",
	  	IssueDate_2_TB: "Please Enter Date of Issue for TLD Badge",
		ExpiryDate_2_TB: "Please Enter Date of Expiry for TLD Badge",
		
		//Pharmacy Licence/Tie up
		CirtificateNo_3_PL: "Please Enter Certificate No. for Pharmacy Licence/Tie up",
	  	IssueDate_3_PL: "Please Enter Date of Issue for Pharmacy Licence/Tie up",
		ExpiryDate_3_PL: "Please Enter Date of Expiry for Pharmacy Licence/Tie up",
		//BloodBank Licence/Tie-up Letter
		CirtificateNo_3_BL: "Please Enter Certificate No. for BloodBank Licence/Tie-up Letter",
	  	IssueDate_3_BL: "Please Enter Date of Issue for BloodBank Licence/Tie-up Letter",
		ExpiryDate_3_BL: "Please Enter Date of Expiry for BloodBank Licence/Tie-up Letter",
		//Ambulance Registration Certificate/Tie-up Letter
		CirtificateNo_3_ARCL: "Please Enter Certificate No. for Ambulance Registration Certificate/Tie-up Letter",
	  	IssueDate_3_ARCL: "Please Enter Date of Issue for Ambulance Registration Certificate/Tie-up Letter",
		ExpiryDate_3_ARCL: "Please Enter Date of Expiry for Ambulance Registration Certificate/Tie-up Letter",
		
		
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});

function getFileSizeandName(input){
	
	for (var i = 0; i < input.files.length; i++) {
	
			var files = input.files[i];
			var ext = files.name.split('.').pop().toLowerCase();
	                console.log(files)  
					//var files = input[0];
					//var extt = files.name.split('.').pop().toLowerCase();
					var reader = new FileReader();
					reader.readAsBinaryString(files);
					reader.onloadend = function(evt) {
							var arrayBuffer = evt.target.result;
							var finaldata = btoa(arrayBuffer);
							console.log(finaldata);
							$("#BT_FileIcon1").val(finaldata);
							//tr.append('<td id="pointer" onclick="byteimage1(\'' + finaldata
								//	+ '\',\'' + extt
								//	+ '\')"  class="glyphicon glyphicon-file"></td>');						  
					}
	}
	}