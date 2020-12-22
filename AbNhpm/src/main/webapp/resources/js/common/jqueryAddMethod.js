/**
 * 
 */
jQuery.validator.addMethod("lettersonly", function(value, element) {
	return this.optional(element) || /^[a-z ]+$/i.test(value);
}, "Invalid Input (Contains Numbers/Special Characters).");

jQuery.validator.addMethod("validatePanNo", function(value, element) {
	return this.optional(element) || /^[A-Z]{5}\d{4}[A-Z]{1}$/.test(value);
}, "Please enter a valid PAN : Example:- AAAPL1234C");
 
jQuery.validator.addMethod("validateMobileNo", function(value, element) {
	return this.optional(element) || /^[1-9]{1}[0-9]{9}$/.test(value);
}, "Invalid mobile number.");
 
//add the rule here
jQuery.validator.addMethod("valueNotEquals", function(value, element, arg){
 return arg !== value;
}, "Value must not equal arg.");
