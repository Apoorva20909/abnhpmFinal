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
      	CirtificateNo_1_BPA: "Please enter your firstname",
	  	IssueDate_1_BPA: "Please enter your firstname",
		ExpiryDate_1_BPA: "Please enter your firstname",
		//Fire Department Clearance Cerrtificate
		CirtificateNo_1_FDCC: "Please enter your firstname",
	  	IssueDate_1_FDCC: "Please enter your firstname",
		ExpiryDate_1_FDCC: "Please enter your firstname",
		//Pollution Control Board Certificate
		CirtificateNo_1_PCBC: "Please enter your firstname",
	  	IssueDate_1_PCBC: "Please enter your firstname",
		ExpiryDate_1_PCBC: "Please enter your firstname",
		//Lift Licence
		CirtificateNo_1_LL: "Please enter your firstname",
	  	IssueDate_1_LL: "Please enter your firstname",
		ExpiryDate_1_LL: "Please enter your firstname",
		
		//Occupancy Certificate
		CirtificateNo_2_OL: "Please enter your firstname",
	  	IssueDate_2_OL: "Please enter your firstname",
		ExpiryDate_2_OL: "Please enter your firstname",
		//Opium Licence
		CirtificateNo_2_OL: "Please enter your firstname",
	  	IssueDate_2_OL: "Please enter your firstname",
		ExpiryDate_2_OL: "Please enter your firstname",
		//Hospital Registration Certificate
		CirtificateNo_2_HRC: "Please enter your firstname",
	  	IssueDate_2_HRC: "Please enter your firstname",
		ExpiryDate_2_HRC: "Please enter your firstname",
		//State Medical Council/Association Registration
		CirtificateNo_2_SMCR: "Please enter your firstname",
	  	IssueDate_2_SMCR: "Please enter your firstname",
		ExpiryDate_2_SMCR: "Please enter your firstname",
		//Morphine Licence
		CirtificateNo_2_ML: "Please enter your firstname",
	  	IssueDate_2_ML: "Please enter your firstname",
		ExpiryDate_2_ML: "Please enter your firstname",
		//PCPNDT Act Registration
		CirtificateNo_2_PAR: "Please enter your firstname",
	  	IssueDate_2_PAR: "Please enter your firstname",
		ExpiryDate_2_PAR: "Please enter your firstname",
		//Surgical Spirit Licence
		CirtificateNo_2_SSL: "Please enter your firstname",
	  	IssueDate_2_SSL: "Please enter your firstname",
		ExpiryDate_2_SSL: "Please enter your firstname",
		//Bio-Medical Waste Management
		CirtificateNo_2_BMWM: "Please enter your firstname",
	  	IssueDate_2_BMWM: "Please enter your firstname",
		ExpiryDate_2_BMWM: "Please enter your firstname",
		//AERB
		CirtificateNo_2_A: "Please enter your firstname",
	  	IssueDate_2_A: "Please enter your firstname",
		ExpiryDate_2_A: "Please enter your firstname",
		//TLD Badge
		CirtificateNo_2_TB: "Please enter your firstname",
	  	IssueDate_2_TB: "Please enter your firstname",
		ExpiryDate_2_TB: "Please enter your firstname",
		
		//Pharmacy Licence/Tie up
		CirtificateNo_3_PL: "Please enter your firstname",
	  	IssueDate_3_PL: "Please enter your firstname",
		ExpiryDate_3_PL: "Please enter your firstname",
		//BloodBank Licence/Tie-up Letter
		CirtificateNo_3_BL: "Please enter your firstname",
	  	IssueDate_3_BL: "Please enter your firstname",
		ExpiryDate_3_BL: "Please enter your firstname",
		//Ambulance Registration Certificate/Tie-up Letter
		CirtificateNo_3_ARCL: "Please enter your firstname",
	  	IssueDate_3_ARCL: "Please enter your firstname",
		ExpiryDate_3_ARCL: "Please enter your firstname",
		
		
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});