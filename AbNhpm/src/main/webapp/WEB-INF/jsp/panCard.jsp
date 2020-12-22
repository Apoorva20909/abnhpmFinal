<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Pan</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"href="${pageContext.request.contextPath}/resources/css/style.css"rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/panCard.js"></script>
 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/jqueryAddMethod.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/alertify.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/default.min.css" />
<script src="${pageContext.request.contextPath}/resources/lib/js/alertify.min.js"></script>

</head>
<body>

<div class="container register">
                <div class="row">
                    
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Hospital Registration</h3>
                                <form method="POST" action="${pageContext.request.contextPath}/checkHospitalPanDetails"  modelAttribute="hosPan" name="hosPan"> 
                                <div class="row register-form">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                        <label for="usr">Hospital PAN:</label><span class="star">*</span>
                                        <input type="text" class="form-control" name="hosPan" id="hosPan"/>
                                        </div>
                                         <input type="submit" class="btnRegister"/>
                                         <input type="button" value ="Cancel"class="btnRegister"/>
                                    </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
 
 <input type="hidden" id="contextPath" value="<%=request.getContextPath()%>" readonly></input>
 <input type="hidden" id="isAlert" value="${showAlert }"></input>
  
            
</body>
</html>