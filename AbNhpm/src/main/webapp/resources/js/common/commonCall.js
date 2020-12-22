/**
 * 
 */

$(document).ready(function() {

		$.ajax({
				url : $('#contextPath').val() +'/getStateDetails',
				type : "GET",
				dataType : "json",
				success : function(data) {
					var data = JSON.parse(JSON.stringify(data));
					var ajaxCallData = JSON.stringify(data);
					$('#hosState').append($("<option></option>").attr("value","").text("Select")); 	
					$.each(data, function(i, data) {
						$('#hosState').append('<option value="' + data.m003StId + '">' + data.m003StNm
								+ '</option>');
					});
				},
				error : function(error) {
					console.log(`Error ${error}`);
				}

			});
	
		 $("#hosState").change(function(){
		        var stateId = $(this).children("option:selected").val();
		        $('#hosDistrict').empty();
 				$.ajax({
					url : $('#contextPath').val() +'/getDistrictDetails',
					type : "GET",
					dataType : "json",
					data:{
						"stateId":stateId 
					},
					success : function(data) {
						
						var ajaxCallData = JSON.stringify(data);
						$('#hosDistrict').append($("<option></option>").attr("value","").text("Select")); 	
						$.each(data, function(i, data) {
							$('#hosDistrict').append('<option value="' + data.m005DstId + '">' + data.m005DstNm
									+ '</option>');
						});
					},
					error : function(error) {
						console.log(`Error ${error}`);
					}

				});
		    });	
});
