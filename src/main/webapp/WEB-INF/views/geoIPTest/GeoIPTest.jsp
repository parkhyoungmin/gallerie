<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GeoIP</title>
<!--jquery dep  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready (function () {
		// getting the public ip address from api and setting on text box
		// ip api : https://www.ipify.org/
		$.get( "https://api.ipify.org?format=json", function( data ) {
			  console.log(data);
			  $("#ip").val(data.ip) ;
	    });
		
		function showLocationOnMap (location) {
			  var map;
		      
		      map = new google.maps.Map(document.getElementById('map'), {
		          center: {lat: Number(location.latitude), lng: Number(location.longitude)},
		          zoom: 15
		      });
		      
		      var marker = new google.maps.Marker({
		          position: {lat: Number(location.latitude), lng: Number(location.longitude)},
		          map: map,
		          title: "Public IP:"+location.ipAddress+" @ "+location.city
		      });
		      
		}
		
		$( "#ipForm" ).submit(function( event ) {
			  event.preventDefault();
			  $.ajax({
				  url: "GeoIPTest",
				  type: "POST",
				  contentType: "application/x-www-form-urlencoded; charset=UTF-8", // send as JSON
				  data: $.param( {ipAddress : $("#ip").val()} ),
				  /*
				  complete: function(data) {
					  console.log(data)
				      console.log ("Request complete");
				     
				  },
				  */
				  success: function(data) {
					  console.log(data)
					  $("#status").html(JSON.stringify(data));
					 /*
					  $("#status").html(JSON.stringify(data));
					  if (data.ipAddress !=null) {
						  console.log ("Success:"+data.ipAddress);    
					    	showLocationOnMap(data);  	
					  }
					  */
				  },
				  error: function(err) {
				      console.log(err);
				      $("#status").html("Error:"+JSON.stringify(data));
				  },
			  });
			  
		});
		
	});
</script>
</head>
<body>


<form id="ipForm" action="<c:url value='/geoIPTest/GeoIPTest' />" method="POST">
	<input type="text" name = "ipAddress" id = "ip"/>
	<input type="submit" name="submit" value="submit" /> 
	
</form>

<div id="status"></div>

<div id="map" style="height: 500px; width:100%; position:absolute"></div>

 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4rw11RhDxupVZthhGLLJnBLsOgHGyKhk"
    async defer></script>
</body>
</html>