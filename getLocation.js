// https://dev.to/sprite421/how-to-check-a-user-s-location-with-javascript-142b

function getLocation() {
  if (!navigator.geolocation) {
    console.log('Geolocation API not supported by this browser.');
  } else {
    console.log('Checking location...');
    navigator.geolocation.getCurrentPosition(success, error);
  }
}

function success(position) {
  console.log(position);
}

function error() {
  console.log('Geolocation error!');
}

// Continuously Watch the User's Location
navigator.geolocation.watchPosition(success);

// <button id="get-location">Get Location</button>
document.getElementById('get-location').addEventListener('click', getLocation);
