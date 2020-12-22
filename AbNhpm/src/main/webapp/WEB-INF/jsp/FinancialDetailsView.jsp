<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Financial Details Form</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"href="${pageContext.request.contextPath}/resources/css/style.css"rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/financialDetailsView.js"></script>
 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/alertify.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/default.min.css" />
<script src="${pageContext.request.contextPath}/resources/lib/js/alertify.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/financialDetails.js"></script>


 	<style type="text/css">
      
        .error
        {
            color: Red;
            margin-bottom: 10px;
        }
      
    </style>
    
</head>

<body>
	
	<div class="container py-5">
	 <div class="row">
	 <div class="col-md-10 mx-auto">
        <H4 align="center">Financial Details</H4>
        <H3 style="color: green; background: aliceblue;">${message}</H3>
        <H3 style="color: red; background: aliceblue;">${error}</H3>
        
        <form method="POST" action="/FinancialDetails"  modelAttribute="financialDetailsPojo" enctype="multipart/form-data" name="financialDetails">
            	<input type="hidden" name="t007HosId" value=404>
            	<hr color="green">
                <div class="form-group row">
                     
                     <div class="col-sm-6">
                        <label for="t007AthrdSgntry">Name of the authorized signatory to hospital bank account<label class="text-danger">*</label></label>
                        <input type="text" class="form-control" name="t007AthrdSgntry" id="t007AthrdSgntry" >      	
                    </div>
                    
                    <div class="col-sm-6">
                        <label for="t007NmBnkAct">Name of the Bank Account of Hospital<label class="text-danger">*</label></label>
                        <input type="text" class="form-control" name="t007NmBnkAct" id="t007NmBnkAct" > 
                    	
                    </div>
                </div>
                        <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="t007ActNo">Hospital Account Number<label class="text-danger">*</label></label>
                        <input type="text" name="t007ActNo" class="form-control" id="t007ActNo">
                     
                    </div>
                    <div class="col-sm-6">
                        <label for="t007IfscCd">IFSC Code<label class="text-danger">*</label></label>
                        <input type="text" name="t007IfscCd"  class="form-control" id="t007IfscCd">
                        
                    </div>
                </div>
                 <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="t007BnkNm">Bank Name<label class="text-danger">*</label></label>
                        <input type="text" name="t007BnkNm" class="form-control" id="t007BnkNm">
                       
                    </div>
                    <div class="col-sm-6">
                        <label for="t007BrnchNm">Branch Name<label class="text-danger">*</label></label>
                        <input type="text" name="t007BrnchNm" class="form-control" id="t007BrnchNm">
                        
                    </div>
                </div>
                  <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="t007TdsExmptn">TDS exemption<label class="text-danger">*</label></label>
                       
                     	<select class="form-control" id="t007TdsExmptn" name="t007TdsExmptn">
                        	<option value="">Select</option>
                        	<option value="123">Select val is 123</option>
                        </select> 
                    </div>
                    <div class="col-sm-6">
                        <label for="file">Cancelled Cheque <label class="text-danger">*</label></label>
                        <input type="file" class="form-control" id="file" name="file">
              
                    </div>   
                </div>
                <hr color="green">
				 <div class="form-group row">
				  	<div class="col-sm-6">
                		<button type="submit" class="btn btn-success px-4 float-right" id="submitButton">Save</button>
                	</div>
                		<div class="col-sm-6">
                		<button type="reset" onclick="myFunction()" class="btn btn-warning px-4 float-left">Reset</button>
                	</div>
                </div>
                </div>
         
     </div>
	 </div>
	 </div>

  </form>
</div>
<script>
function myFunction() {
  location.replace("/FinancialDetails")
}
</script>
</body>
</html>