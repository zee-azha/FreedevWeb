<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Office maps</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA3F8kgIvnHpEGHLtwa9jCYsL8SlDSmvsM&callback=initMap&libraries=&v=weekly"
      defer
    ></script>
    <style type="text/css">
    
      #map {
        height: 100%;
      }

      
      html,
      body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script>
      (function(exports) {
        "use strict";

        function initMap() {
        	var myLatlng = new google.maps.LatLng(-6.362014,106.824887);
        	var mapOptions = {
        	  zoom: 18,
        	  center: myLatlng
        	}
        	var map = new google.maps.Map(document.getElementById("map"), mapOptions);

        	var marker = new google.maps.Marker({
        	    position: myLatlng,
        	    title:"Freedev office!"
        	});

        	// To add the marker to the map, call setMap();
        	marker.setMap(map);

        }

        exports.initMap = initMap;
      })((this.window = this.window || {}));
    </script>
  </head>
  <body>
    <div id="map"></div>
  </body>
</html>