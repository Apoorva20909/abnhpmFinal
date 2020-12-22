// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='financialDetails']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      t007AthrdSgntry: "required",
      t007NmBnkAct: "required",
  	  t007ActNo: "required",
	  t007IfscCd: "required",
	  t007BnkNm: "required",
	  t007BrnchNm: "required",
	  t007TdsExmptn: "required",
	  file: "required",
    },
    // Specify validation error messages
    messages: {
      t007AthrdSgntry: "Please enter Name of the authorized signatory to hospital bank account",
      t007NmBnkAct: "Please enter Name of the Bank Account of Hospital",
	  t007ActNo: "Please enter Hospital Account Number",
	  t007IfscCd: "Please enter IFSC Code",
	  t007BnkNm: "Please enter Bank Name",
	  t007BrnchNm: "Please enter Branch Name",
	  t007TdsExmptn: "Please select TDS exemption",
	  file: "Please upload Cancelled Cheque",
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});