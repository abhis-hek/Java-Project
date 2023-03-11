/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function initMap() {
  const directionsRenderer = new google.maps.DirectionsRenderer();
  const directionsService = new google.maps.DirectionsService();
  const start = document.getElementById("start");
  const end = document.getElementById("end");

  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 7,
    center: { lat: 41.85, lng: -87.65 },
    disableDefaultUI: true
  });

  const autocompleteStart = new google.maps.places.Autocomplete(start);
  autocompleteStart.bindTo("bounds", map);
  autocompleteStart.addListener("place_changed", () => {
    const place = autocompleteStart.getPlace();

    if (!place.geometry || !place.geometry.location) {
      // User entered the name of a Place that was not suggested and
      // pressed the Enter key, or the Place Details request failed.
      window.alert("No details available for input: '" + place.name + "'");
      return;
    }
    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }
  });

  const autocompleteEnd = new google.maps.places.Autocomplete(end);
  autocompleteEnd.bindTo("bounds", map);
  autocompleteEnd.addListener("place_changed", () => {
    const place = autocompleteEnd.getPlace();

    if (!place.geometry || !place.geometry.location) {
      // User entered the name of a Place that was not suggested and
      // pressed the Enter key, or the Place Details request failed.
      window.alert("No details available for input: '" + place.name + "'");
      return;
    }
    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }
  });

  directionsRenderer.setMap(map);
  directionsRenderer.setPanel(document.getElementById("sidebar"));

  const control = document.getElementById("floating-panel");

  map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);

  const onChangeHandler = function () {
    calculateAndDisplayRoute(directionsService, directionsRenderer);
    calculateDistance();
  };

  //document.getElementById("start").addEventListener("change", onChangeHandler);
  document.getElementById("end").addEventListener("change", onChangeHandler);
}

function calculateAndDisplayRoute(directionsService, directionsRenderer) {
  const start = document.getElementById("start").value;
  const end = document.getElementById("end").value;

  directionsService
    .route({
      origin: start,
      destination: end,
      travelMode: google.maps.TravelMode.DRIVING,
    })
    .then((response) => {
      directionsRenderer.setDirections(response);
    })
    .catch((e) => window.alert("Directions request failed due to " + status));
}
function calculateDistance() {
  var start = $("#start").val();
  var end = $("#end").val();
  var service = new google.maps.DistanceMatrixService();
  service.getDistanceMatrix(
    {
      origins: [start],
      destinations: [end],
      travelMode: google.maps.TravelMode.DRIVING,
      unitSystem: google.maps.UnitSystem.IMPERIAL, // miles and feet.
      // unitSystem: google.maps.UnitSystem.metric, // kilometers and meters.
      avoidHighways: false,
      avoidTolls: false
    },
    callback
  );
}
function callback(response, status) {
  if (status != google.maps.DistanceMatrixStatus.OK) {
    $("#result").html(err);
  } else {
    var start = response.originAddresses[0];
    console.log(start);
    var end = response.destinationAddresses[0];
    console.log(end);
    if (response.rows[0].elements[0].status === "ZERO_RESULTS") {
      $("#result").html(
        "Better get on a plane. There are no roads between " +
        start +
        " and " +
        end
      );
    } else {
      var distance = response.rows[0].elements[0].distance;
      console.log(distance);
      var duration = response.rows[0].elements[0].duration;
      console.log(duration);
      console.log(response.rows[0].elements[0].distance);
      var distance_in_kilo = distance.value / 1000; // the kilom
      
      console.log(distance_in_kilo);
      
      var duration_text = duration.text;
      var duration_value = duration.value;
      var price=distance_in_kilo.toFixed(2)*9;
      var price2=distance_in_kilo.toFixed(2)*12;
      var price3=distance_in_kilo.toFixed(2)*20;
    
      $("#kilo").html(
        `Distance : ${distance_in_kilo.toFixed(2)} km`
      );
      $("#kilo1").html(
        `Distance : ${distance_in_kilo.toFixed(2)} km`
      );
      $("#kilo2").html(
        `Distance : ${distance_in_kilo.toFixed(2)} km`
      );
      
      $("#minute").html(`Time : ${duration_text} `);
      $("#minute1").html(`Time : ${duration_text} `);
      $("#minute2").html(`Time : ${duration_text} `);
      
      $("#mini").html(`Price : ${price}`);
      $("#sedan").html(`Price : ${price2}`);
      $("#luxury").html(`Price : ${price3}`);
     
    }
  }
}

window.initMap = initMap;