$( document ).ready(function() {
  var map;
  var json = "http://localhost:3000/show.json";
  var infowindow = new google.maps.InfoWindow();

  function initialize() {
    var mapProp = {
      center: new google.maps.LatLng(52.4550, -3.3833),
      zoom: 7,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("map"), mapProp);

    $.getJSON(json, function(json) {
    $.each(json.locations, function (key, data) {
      var latLng = new google.maps.LatLng(data.latitude, data.longitude);
      // Muestra ultima ubicacion del vehiculo al hacer click sobre el marker
      var description = 'Vehiculo # '+data.vehicle_id+": Lat: "+data.latitude + ", Long: "+data.longitude
      var marker = new google.maps.Marker({
        position: latLng,
        map: map,
      });
      bindInfoWindow(marker, map, infowindow, description);
    });
    });
  }

  function bindInfoWindow(marker, map, infowindow, strDescription) {
    google.maps.event.addListener(marker, 'click', function () {
      infowindow.setContent(strDescription);
      infowindow.open(map, marker);
    });
  }

  google.maps.event.addDomListener(window, 'load', initialize);

 });


