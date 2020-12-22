<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Licences and Certification</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="resources/css/LicencesAndCertificationStyle.css">
<script src="resources/js/LicencesAndCertificationStyle.js"></script>

<link rel="stylesheet"href="resources/css/jquery-ui.css">
<script src="resources/js/jquery-1.12.4.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/cal.js"></script>
<script src="resources/js/licandcertimgprev.js"></script>
 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/alertify.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/default.min.css" />
<script src="${pageContext.request.contextPath}/resources/lib/js/alertify.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/licenceCertificates.js"></script>

 <!-- Importing icon cdn -->
    <link rel="stylesheet" href= 
"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
 <!--  <script src="https://code.jquery.com/jquery-1.12.4.js"></script> --><!-- //validation will not run if  -->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

	<br>
	
	<form method="POST" enctype="multipart/form-data" action="LicencesAndCertification" modelAttribute="licencesAndCertificationPojo"  name="financialDetails">
	
	<div class="container-fluid">

		<div class="col" style="text-align: right;">
			<button type="submit" class="btn btn-success px-4 float"
				style="margin-right: 10px;">Save</button>
			<button type="reset" class="btn btn-warning px-4 float-right">NEXT</button>
		</div>


		<div class="row">

			<div class="col-md-10 mx-auto">
				<H4 align="center">Licences and Certification</H4>
				<br>
				<p style="color: blue; text-align: center">
					<strong>Note: Supported file types are JPG,
						JPEG,BMP,PNG,PDF less than 200KB</strong>
				</p>
				
				<div style="margin-bottom: 20px;font-size: xx-large;font-weight: 600;text-align: center;background: yellow;">${SuccessMsg}</div>
				
				
				<div class="row">
					<div class="col-sm-4"
						style="background: #2AEAD3; right: 5px; text-align: center; font-weight: bolder;">Approval
						Name</div>
					<div class="col"
						style="background: #2AEAD3; margin-right: 5px; text-align: center; font-weight: bolder;">Certificate
						No</div>
					<div class="col"
						style="background: #2AEAD3; margin-right: 5px; text-align: center; font-weight: bolder;">Issue
						Date</div>
					<div class="col"
						style="background: #2AEAD3; margin-right: 5px; text-align: center; font-weight: bolder;">Expiry
						Date</div>
					<div class="col"
						style="background: #2AEAD3; margin-right: 5px; text-align: center; font-weight: bolder;"">Actions</div>
				</div>
				<br>


				<div data-toggle="collapse" data-target="#form1">
					<h5
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px">${specialPojoList[0].m007CtgryNm}</h5>
				</div>
				
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[0].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control"
									name="CirtificateNo_1_BPA" 
									id="CirtificateNo_1_BPA"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker112"
									name="IssueDate_1_BPA" autocomplete="off"
									id="IssueDate_1_BPA" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 112"></i></span>
									</div>
									</div>
								</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control"  id="datepicker113"
									 name="ExpiryDate_1_BPA" autocomplete="off"
									id="ExpiryDate_1_BPA" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 113"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
						
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic1" style="width: 30px; height: 30px;">
								<input id="BI_File1" type="file" name="BI_File1"  onchange="previewFile_BPA(this);" style="display:none"/>
									
								<img src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;" onclick ="imgpreview_BPA()">
									
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[1].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_FDCC" 
									 id="CirtificateNo_1_FDCC" 
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control"  id="datepicker122"
									 name="IssueDate_1_FDCC" autocomplete="off"
									 id="IssueDate_1_FDCC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 122"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_FDCC" autocomplete="off"  id="datepicker123"
									 id="ExpiryDate_1_FDCC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 123"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
							
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic2" style="width: 30px; height: 30px;">
								<input id="BI_File2" type="file" name="BI_File2"   onchange="previewFile_FDCC(this);" style="display:none"/>
									
									
								<img src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;"  onclick ="imgpreview_FDCC()">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[2].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_PCBC"
									 id="CirtificateNo_1_PCBC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker132"
									 name="IssueDate_1_PCBC" autocomplete="off"
									 id="IssueDate_1_PCBC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 132"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
								<div class="input-group mb-3">
								<input type="text" class="form-control"  id="datepicker133"
									 name="ExpiryDate_1_PCBC" autocomplete="off"
									 id="ExpiryDate_1_PCBC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 133"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic3" style="width: 30px; height: 30px;">
								<input id="BI_File3" type="file" name="BI_File3"  style="display:none"/>
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[3].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_LL"
									 id="CirtificateNo_1_LL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker142"
									 name="IssueDate_1_LL" autocomplete="off"
									 id="IssueDate_1_LL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 142"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
								<div class="input-group mb-3">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_LL" autocomplete="off" id="datepicker143"
									 id="ExpiryDate_1_LL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 143"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic4" style="width: 30px; height: 30px;">
								<input id="BI_File4" type="file" name="BI_File4" style="display:none" />
									
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
					</div>
				</div>
				


				<div data-toggle="collapse" data-target="#form1">
					<h5
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px; margin-top: 8px;">${specialPojoList[4].m007CtgryNm}</h5>
				</div>
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[4].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_OC"
									 id="CirtificateNo_2_OC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker212"
									 name="IssueDate_2_OC" autocomplete="off"
									 id="IssueDate_2_OC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
									<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 212"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker213"
									 name="ExpiryDate_2_OC" autocomplete="off"
									 id="ExpiryDate_2_OC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 213"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
							
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic1" style="width: 30px; height: 30px;">
								<input id="RC_File1" type="file" name="RC_File1" style="display:none" />	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
								
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[5].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_OL"
									 id="CirtificateNo_2_OL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker222"
									 name="IssueDate_2_OL" autocomplete="off"
									 id="IssueDate_2_OL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 222"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker223"
									 name="ExpiryDate_2_OL" autocomplete="off"
									 id="ExpiryDate_2_OL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 223"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic2" style="width: 30px; height: 30px;">
								<input id="RC_File2" type="file" name="RC_File2" style="display:none" />	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[6].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_HRC"
									 id="CirtificateNo_2_HRC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker232"
									 name="IssueDate_2_HRC" autocomplete="off"
									 id="IssueDate_2_HRC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 232"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker233"
									 name="ExpiryDate_2_HRC" autocomplete="off"
									 id="ExpiryDate_2_HRC"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 233"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic3" style="width: 30px; height: 30px;">
								<input id="RC_File3" type="file" name="RC_File3" style="display:none" />	
									
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[7].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_SMCR"
									 id="CirtificateNo_2_SMCR"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker242"
									 name="IssueDate_2_SMCR" autocomplete="off"
									 id="IssueDate_2_SMCR"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 242"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker243"
									 name="ExpiryDate_2_SMCR" autocomplete="off"
									 id="ExpiryDate_2_SMCR"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 243"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic4" style="width: 30px; height: 30px;">
								<input id="RC_File4" type="file" name="RC_File4"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[8].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_ML"
									 id="CirtificateNo_2_ML"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker252"
									 name="IssueDate_2_ML" autocomplete="off"
									 id="IssueDate_2_ML"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 252"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker253"
									 name="ExpiryDate_2_ML" autocomplete="off"
									 id="ExpiryDate_2_ML"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 253"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic5" style="width: 30px; height: 30px;">
								<input id="RC_File5" type="file" name="RC_File5"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[9].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_PAR"
									 id="CirtificateNo_2_PAR"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker262"
									 name="IssueDate_2_PAR" autocomplete="off"
									 id="IssueDate_2_PAR"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 262"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker263"
									 name="ExpiryDate_2_PAR" autocomplete="off"
									 id="ExpiryDate_2_PAR"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 263"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic6" style="width: 30px; height: 30px;">
								<input id="RC_File6" type="file" name="RC_File6"  style="display:none"/>	
									
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[10].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_SSL"
									 id="CirtificateNo_2_SSL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker272"
									 name="IssueDate_2_SSL" autocomplete="off"
									 id="IssueDate_2_SSL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 272"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker273"
									 name="ExpiryDate_2_SSL" autocomplete="off"
									 id="ExpiryDate_2_SSL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 273"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic7" style="width: 30px; height: 30px;">
								<input id="RC_File7" type="file" name="RC_File7"  style="display:none"/>	
									
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[11].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_BMWM"
									 id="CirtificateNo_2_BMWM"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker282"
									 name="IssueDate_2_BMWM" autocomplete="off"
									 id="IssueDate_2_BMWM" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 282"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker283"
									 name="ExpiryDate_2_BMWM" autocomplete="off"
									 id="ExpiryDate_2_BMWM"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 283"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic8" style="width: 30px; height: 30px;">
								<input id="RC_File8" type="file" name="RC_File8"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[12].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_A"
									 id="CirtificateNo_2_A"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker292"
									 name="IssueDate_2_A" autocomplete="off"
									 id="IssueDate_2_A"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 292"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker293"
									 name="ExpiryDate_2_A"  autocomplete="off"
									 id="ExpiryDate_2_A" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 293"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic9" style="width: 30px; height: 30px;">
								<input id="RC_File9" type="file" name="RC_File9"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[13].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_TB"
									 id="CirtificateNo_2_TB"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker2102"
									 name="IssueDate_2_TB" autocomplete="off"
									 id="IssueDate_2_TB" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 2102"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker2103"
									 name="ExpiryDate_2_TB" autocomplete="off"
									 id="ExpiryDate_2_TB"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 2103"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="RC_Pic10" style="width: 30px; height: 30px;">
								<input id="RC_File10" type="file" name="RC_File10"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
					</div>
				</div>



				<div data-toggle="collapse" data-target="#form1">
					<h5
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px; margin-top: 8px;">${specialPojoList[14].m007CtgryNm}</h5>
				</div>
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[14].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_PL"
									 id="CirtificateNo_3_PL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker312"
									 name="IssueDate_3_PL"  autocomplete="off"
									 id="IssueDate_3_PL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 312"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker313"
									 name="ExpiryDate_3_PL" autocomplete="off"
									 id="ExpiryDate_3_PL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 313"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="S_Pic1" style="width: 30px; height: 30px;">
								<input id="S_File1" type="file" name="S_File1"  style="display:none"/>	
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[15].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_BL"
									 id="CirtificateNo_3_BL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker322"
									 name="IssueDate_3_BL" autocomplete="off"
									 id="IssueDate_3_BL" 
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 322"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker323"
									 name="ExpiryDate_3_BL" autocomplete="off"
									 id="ExpiryDate_3_BL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 323"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="S_Pic2" style="width: 30px; height: 30px;">
								<input id="S_File2" type="file" name="S_File2"  style="display:none"/>	
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">${specialPojoList[16].m008AprvlNm}</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_ARCL"
									 id="CirtificateNo_3_ARCL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker332"
									 name="IssueDate_3_ARCL" autocomplete="off"
									 id="IssueDate_3_ARCL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 332"></i></span>
									</div>
									</div>
							</div>
							<div class="col">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="datepicker333"
									 name="ExpiryDate_3_ARCL" autocomplete="off"
									 id="ExpiryDate_3_ARCL"
									placeholder="MM/DD/YYYY" style="text-align: center;">
										<div class="input-group-append">
									<span class="input-group-text"><i class="fa fa-calendar 333"></i></span>
									</div>
									</div>
							</div>
							<div class="col" style="text-align: center;">
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="S_Pic3" style="width: 30px; height: 30px;">
								<input id="S_File3" type="file" name="S_File3"  style="display:none"/>	
									
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>

					</div>
				</div>
				<br>
				<div class="form-group row">
					<div class="col-sm-5">
						<button type="submit" class="btn btn-success px-4 float-right">SAVE</button> 
					</div>
					<div class="col-sm-3" style="text-align: center;">
						<button type="reset" class="btn btn-success px-4 float" data-toggle="modal" 
						href="#ignismyModal">CHECK
							ELIGIBILITY</button>
					</div>
					<div class="col-sm-4">
						<button type="reset" class="btn btn-warning px-4 float-left">NEXT</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	</div>

	<br>

	<!--Model Popup starts-->
	<div class="container">
		<div class="row">

			<div class="modal fade" id="ignismyModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="">
								<span>×</span>
							</button>
						</div>

						<div class="modal-body">

							<div class="thank-you-pop">
								<img src="resources/images/green-round-theam.jpg" alt=""
									style="width: 150px;">
								<p>Licenses and Certifications Details Saved Successsfully</p>
								<div align="right">
									<button class="btn btn-info" data-dismiss="modal">OK</button>
								</div>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Model Popup ends-->
	</form>
	
	<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" id="myBtn" style="display:none">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Attached Image </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div>
			<img src=""  id="previewImg" style="width: 100%;">
	  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>
<hr>
 <div class="input-group mb-3">
      <input type="text" class="form-control" placeholder="Your Email" id="mail" name="email">
      <div class="input-group-append"  id="datepicker112">
        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
      </div>
    </div>
<hr>
</body>
</html>