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
 <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/alertify.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/lib/css/default.min.css" />
<script src="${pageContext.request.contextPath}/resources/lib/js/alertify.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/licenceCertificates.js"></script>
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
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px">Building
						& Infrastructure</h5>
				</div>
				
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">Building Plan Approval</div>
							<div class="col">
								<input type="text" class="form-control"
									name="CirtificateNo_1_BPA" 
									id="CirtificateNo_1_BPA"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control"
									name="IssueDate_1_BPA"  id="datepicker112" autocomplete="off" readonly
									id="IssueDate_1_BPA"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_BPA" id="datepicker113" autocomplete="off" readonly
									id="ExpiryDate_1_BPA"
									placeholder="Date of Expiry" style="text-align: center;">
							</div>
							<div class="col" style="text-align: center;">
								
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic1" style="width: 30px; height: 30px;">
								<input id="BI_File1" type="file" name="BI_File1" style="display:none" />
								
								<img
									src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">Fire Department Clearance
								Cerrtificate</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_FDCC" 
									 id="CirtificateNo_1_FDCC" 
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_1_FDCC" id="datepicker122" autocomplete="off" readonly
									 id="IssueDate_1_FDCC"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_FDCC" id="datepicker123" autocomplete="off" readonly
									 id="ExpiryDate_1_FDCC"
									placeholder="Date of Expiry" style="text-align: center;">
							</div>
							<div class="col" style="text-align: center;">
							
								<img src="resources/images/attachmentImage.jpg" alt="HTML5 Icon" id="BI_Pic2" style="width: 30px; height: 30px;">
								<input id="BI_File2" type="file" name="BI_File2"  style="display:none"/>
									
									
								<img src="resources/images/id.png" alt="HTML5 Icon"
									style="width: 30px; height: 30px;">
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">Pollution Control Board Certificate</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_PCBC"
									 id="CirtificateNo_1_PCBC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_1_PCBC" id="datepicker132" autocomplete="off" readonly
									 id="IssueDate_1_PCBC"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_PCBC" id="datepicker133" autocomplete="off" readonly
									 id="ExpiryDate_1_PCBC"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Lift Licence</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_1_LL"
									 id="CirtificateNo_1_LL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_1_LL" id="datepicker142" autocomplete="off" readonly
									 id="IssueDate_1_LL"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_1_LL" id="datepicker143" autocomplete="off" readonly
									 id="ExpiryDate_1_LL"
									placeholder="Date of Expiry" style="text-align: center;">
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
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px; margin-top: 8px;">Registrations
						& Certification</h5>
				</div>
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">Occupancy Certificate</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_OC"
									 id="CirtificateNo_2_OC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_OC" id="datepicker212" autocomplete="off" readonly
									 id="IssueDate_2_OC"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_OC" id="datepicker222" autocomplete="off" readonly
									 id="ExpiryDate_2_OC"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Opium Licence</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_OL"
									 id="CirtificateNo_2_OL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_OL" id="datepicker2221" autocomplete="off" readonly
									 id="IssueDate_2_OL"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_OL" id="datepicker223" autocomplete="off" readonly
									 id="ExpiryDate_2_OL"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Hospital Registration Certificate</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_HRC"
									 id="CirtificateNo_2_HRC"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_HRC" id="datepicker232" autocomplete="off" readonly
									 id="IssueDate_2_HRC"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_HRC" id="datepicker2233" autocomplete="off" readonly
									 id="ExpiryDate_2_HRC"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">State Medical Council/Association
								Registration</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_SMCR"
									 id="CirtificateNo_2_SMCR"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_SMCR" id="datepicker242" autocomplete="off" readonly
									 id="IssueDate_2_SMCR"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_SMCR" id="datepicker243" autocomplete="off" readonly
									 id="ExpiryDate_2_SMCR"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Morphine Licence</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_ML"
									 id="CirtificateNo_2_ML"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_ML" id="datepicker252" autocomplete="off" readonly
									 id="IssueDate_2_ML"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_ML" id="datepicker253" autocomplete="off" readonly
									 id="ExpiryDate_2_ML"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">PCPNDT Act Registration</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_PAR"
									 id="CirtificateNo_2_PAR"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_PAR" id="datepicker262" autocomplete="off" readonly
									 id="IssueDate_2_PAR"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_PAR" id="datepicker263" autocomplete="off" readonly
									 id="ExpiryDate_2_PAR"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Surgical Spirit Licence</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_SSL"
									 id="CirtificateNo_2_SSL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_SSL" id="datepicker272" autocomplete="off" readonly
									 id="IssueDate_2_SSL"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_SSL" id="datepicker273" autocomplete="off" readonly
									 id="ExpiryDate_2_SSL"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Bio-Medical Waste Management</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_BMWM"
									 id="CirtificateNo_2_BMWM"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_BMWM" id="datepicker282" autocomplete="off" readonly
									 id="IssueDate_2_BMWM" 
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_BMWM" id="datepicker283" autocomplete="off" readonly
									 id="ExpiryDate_2_BMWM"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">AERB</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_A"
									 id="CirtificateNo_2_A"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_A" id="datepicker292" autocomplete="off" readonly
									 id="IssueDate_2_A"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_A" id="datepicker293" autocomplete="off" readonly
									 id="ExpiryDate_2_A" 
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">TLD Badge</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_2_TB"
									 id="CirtificateNo_2_TB"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_2_TB" id="datepicker2102" autocomplete="off" readonly
									 id="IssueDate_2_TB" 
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_2_TB" id="datepicker2103" autocomplete="off" readonly
									 id="ExpiryDate_2_TB"
									placeholder="Date of Expiry" style="text-align: center;">
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
						style="background: #2AEAD3; border-top-width: 15px; padding-top: 10px; border-bottom-width: 10px; padding-bottom: 10px; margin-top: 8px;">Services</h5>
				</div>
				<div>
					<div id="form1" class="collapse show"
						style="border: solid; padding: 20px; border-color: #2AEAD3"">
						<div class="row" style="padding: 10px;">
							<div class="col-sm-4">Pharmacy Licence/Tie up</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_PL"
									 id="CirtificateNo_3_PL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_3_PL" id="datepicker312" autocomplete="off" readonly
									 id="IssueDate_3_PL"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_3_PL" id="datepicker313" autocomplete="off" readonly
									 id="ExpiryDate_3_PL"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">BloodBank Licence/Tie-up Letter</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_BL"
									 id="CirtificateNo_3_BL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_3_BL" id="datepicker322" autocomplete="off" readonly
									 id="IssueDate_3_BL" 
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_3_BL" id="datepicker323" autocomplete="off" readonly
									 id="ExpiryDate_3_BL"
									placeholder="Date of Expiry" style="text-align: center;">
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
							<div class="col-sm-4">Ambulance Registration
								Certificate/Tie-up Letter</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="CirtificateNo_3_ARCL"
									 id="CirtificateNo_3_ARCL"
									placeholder="Certificate No." style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="IssueDate_3_ARCL" id="datepicker332" autocomplete="off" readonly
									 id="IssueDate_3_ARCL"
									placeholder="Date of Issue" style="text-align: center;">
							</div>
							<div class="col">
								<input type="text" class="form-control" 
									 name="ExpiryDate_3_ARCL" id="datepicker333" autocomplete="off" readonly
									 id="ExpiryDate_3_ARCL"
									placeholder="Date of Expiry" style="text-align: center;">
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
</body>
</html>