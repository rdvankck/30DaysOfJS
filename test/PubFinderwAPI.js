<script>
  const mapsApiKey = "YOUR-API-KEY";
  const geocodeApiKey = "YOUR-API-KEY";
  let map;
  let markers = [];
  let userLocation = null;
  let pubMarkers = {
  };
  let placesService;
  let infoWindow;
  /* Pub Data from publist.html */
  const pubData = [{
    outlet_local_id:1057,outlet_name:"The FX",outlet_address_street_1:"106 Hare Ln",outlet_address_city:"Claygate",outlet_address_postalcode:"XX 0LZ",outlet_address_location_lat:51.3597868,outlet_address_location_lon:-.3450963,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                   ,{
                     outlet_local_id:1332,outlet_name:"Teller's AX",outlet_address_street_1:"75 Castle St",outlet_address_city:"Farnham",outlet_address_postalcode:"GU9 XX",outlet_address_location_lat:51.2153745,outlet_address_location_lon:-.7990535,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                   ,{
                     outlet_local_id:1363,outlet_name:"Tattenham CX",outlet_address_street_1:"Tattenham Crescent",outlet_address_city:"Epsom",outlet_address_postalcode:"XX 5NY",outlet_address_location_lat:51.3099229,outlet_address_location_lon:-.2438481,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                  ];
  function calculateDistance(lat1, lon1, lat2, lon2) {
    const R = 6371;
    const dLat = toRad(lat2 - lat1);
    const dLon = toRad(lon2 - lon1);
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) + Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) * Math.sin(dLon / 2) * Math.sin(dLon / 2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    return R * c;
  }
  function toRad(value) {
    return value * Math.PI / 180;
  }
  function initMap() {
    const defaultLocation = {
      lat: 51.5074, lng: -0.1278 };
    map = new google.maps.Map(document.getElementById("map"), {
      zoom: 10,
      center: defaultLocation,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      disableDefaultUI: true,
      zoomControl: true
    }
                             );
    placesService = new google.maps.places.PlacesService(map);
    infoWindow = new google.maps.InfoWindow();
  }
  function clearMarkers() {
    markers.forEach(marker => marker.setMap(null));
    markers = [];
    pubMarkers = {
    };
  }
  function findNearbyPubs(userLat, userLng) {
    const pubsWithDistance = pubData.map(pub => ({
      ...pub, distance: calculateDistance(userLat, userLng, pub.outlet_address_location_lat, pub.outlet_address_location_lon)}
                                                ));
    return pubsWithDistance.sort((a, b) => a.distance - b.distance).slice(0, 6);
  }
  function addPubMarkers(nearbyPubs, userLat, userLng) {
    clearMarkers();
    markers.push(new google.maps.Marker({
      position: {
        lat: userLat, lng: userLng }
      , map: map, title: "Your Location", icon: {
        url: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png', scaledSize: new google.maps.Size(32, 32) }
    }
                                       ));
    nearbyPubs.forEach(pub => {
      const pubMarker = new google.maps.Marker({
        position: {
          lat: pub.outlet_address_location_lat, lng: pub.outlet_address_location_lon }
        , map: map, title: pub.outlet_name, icon: {
          url: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png', scaledSize: new google.maps.Size(28, 28) }
      }
                                              );
      pubMarkers[pub.outlet_local_id] = pubMarker;
     const createInfoWindowContent = (pubData, placeData = null) => {
    let content = '<div style="max-width: 220px; font-family: Arial, sans-serif;">';

    if (placeData && placeData.photos && placeData.photos.length > 0) {
        content += `<img src="${placeData.photos[0].getUrl({ 'maxWidth': 220 })}" alt="Photo of ${pubData.outlet_name}" style="width:100%; margin-left: auto; margin-right: auto; border-radius: 4px; margin-bottom: 10px;">`;
    }

    content += `<h6 style="margin: 0 0 5px 0; font-size: 16px;"><strong>${pubData.outlet_name}</strong></h6>
                <p style="margin: 2px 0; color: #666; font-size: 14px;">${pubData.outlet_address_street_1}</p>
                <p style="margin: 2px 0; color: #666; font-size: 14px;">${pubData.outlet_address_city}, ${pubData.outlet_address_postalcode}</p>`;

  
    let infoLine = `<p style="margin: 8px 0 5px 0; color: #555; font-size: 14px; display: flex; align-items: center;">`;
    
    
    infoLine += `<span>📍 ${pubData.distance.toFixed(2)} km</span>`;    
    if (placeData && placeData.rating) {
        infoLine += `<span style="margin: 0 8px;"></span><span>⭐ ${placeData.rating}</span>`;
    }
    
    infoLine += `</p>`;
    content += infoLine;

    content += '</div>';
    return content;
};
      pubMarker.addListener('click', () => {
        const request = {
          query: `${pub.outlet_name}
${pub.outlet_address_city}
`, fields: ['name', 'rating', 'place_id', 'photos'] };
        placesService.findPlaceFromQuery(request, (results, status) => {
          let finalContent = createInfoWindowContent(pub);
          if (status === google.maps.places.PlacesServiceStatus.OK && results && results[0]) {
            finalContent = createInfoWindowContent(pub, results[0]);
          }
          infoWindow.setContent(finalContent);
          infoWindow.open(map, pubMarker);
        }
                                        );
      }
                           );
      markers.push(pubMarker);
    }
                      );
    const bounds = new google.maps.LatLngBounds();
    markers.forEach(marker => bounds.extend(marker.getPosition()));
    map.fitBounds(bounds);
  }
  function displayPubList(nearbyPubs) {
    const pubInfo = document.getElementById('pubInfo');
    const pubList = document.getElementById('pubList');
    if (nearbyPubs.length > 0) {
      pubList.innerHTML = '';
      nearbyPubs.forEach((pub) => {
        const pubCard = document.createElement('div');
        pubCard.className = 'pub-card';
        pubCard.setAttribute('data-pub-id', pub.outlet_local_id);
        pubCard.innerHTML = `
<div class="pub-card-inner">
<div class="pub-card-image-container">
<div class="pub-card-image placeholder"></div>
  </div>
<div class="pub-card-details">
<h6 class="pub-card-name">${pub.outlet_name}
  </h6>
<p class="pub-card-address">${pub.outlet_address_street_1}
, ${pub.outlet_address_postalcode}
  </p>
<div class="pub-card-info">
<span class="pub-card-rating" id="rating-container-${pub.outlet_local_id}
"></span>
<span class="pub-card-distance">📍 ${pub.distance.toFixed(2)}
km</span>
  </div>
<div class="pub-card-actions">
<button class="select-button" data-pub-id="${pub.outlet_local_id}
" data-pub-name="${pub.outlet_name.replace(/"/g, '\"')}
">
Select This Pub
  </button>
  </div>
  </div>
  </div>`;
        pubCard.addEventListener('click', () => {
          selectPub(pub.outlet_local_id, pub.outlet_name, pubCard.querySelector('.select-button'));
          const marker = pubMarkers[pub.outlet_local_id];
          if (marker) {
            map.panTo(marker.getPosition());
            google.maps.event.trigger(marker, 'click');
          }
        }
                                );
        pubList.appendChild(pubCard);
        const request = {
          query: `${pub.outlet_name}
${pub.outlet_address_city}
`, fields: ['rating', 'photos'] };
        placesService.findPlaceFromQuery(request, (results, status) => {
          if (status === google.maps.places.PlacesServiceStatus.OK && results && results[0]) {
            const place = results[0];
            const ratingContainer = document.getElementById(`rating-container-${pub.outlet_local_id}
`);
            if (ratingContainer && place.rating) {
              ratingContainer.innerHTML = `⭐ ${place.rating}
`;
            }
            if (place.photos && place.photos.length > 0) {
              const photoUrl = place.photos[0].getUrl({
                'maxWidth': 120, 'maxHeight': 120 }
                                                     );
              const imageContainer = pubCard.querySelector('.pub-card-image-container');
              if (imageContainer) {
                imageContainer.innerHTML = `<img src="${photoUrl}
" alt="Photo of ${pub.outlet_name}
" class="pub-card-image">`;
              }
            }
          }
        }
                                        );
      }
                        );
      pubInfo.style.display = 'block';
    }
    else {
      pubInfo.style.display = 'none';
    }
  }
  function selectPub(pubId, pubName, buttonElement) {
    document.querySelectorAll('.pub-card').forEach(card => card.classList.remove('selected'));
    document.querySelectorAll('.select-button').forEach(btn => {
      btn.textContent = 'Select This Pub';
      btn.classList.remove('selected-btn');
    }
                                                       );
    const pubCard = buttonElement.closest('.pub-card');
    pubCard.classList.add('selected');
    buttonElement.textContent = 'Selected ✓';
    buttonElement.classList.add('selected-btn');
    document.getElementById('selectedBar').value = pubName;
    document.getElementById('submitSection').style.display = 'block';
  }

  function updateMap() {
    const postalCode = document.getElementById('postalCode').value.trim();
    if (postalCode.length < 3) return;
    document.getElementById('submitSection').style.display = 'none';
    document.getElementById('selectedBar').value = '';
    const encodedAddress = encodeURIComponent(postalCode);
    fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${encodedAddress}
&key=${geocodeApiKey}
`)
      .then(res => res.json())
      .then(data => {
      if (data.status === "OK" && data.results.length > 0) {
        const location = data.results[0].geometry.location;
        const components = data.results[0].address_components;
      
        const countryComponent = components.find(c => c.types.includes("country"));
        document.getElementById("country").value = countryComponent ? countryComponent.long_name : "";
      
        const cityComponent = components.find(c => c.types.includes("postal_town"));
        document.getElementById("city").value = cityComponent ? cityComponent.long_name : "";
        document.getElementById("latitude").value = location.lat;
        document.getElementById("longitude").value = location.lng;
        map.setCenter(location);
        map.setZoom(14);
        const nearbyPubs = findNearbyPubs(location.lat, location.lng);
        addPubMarkers(nearbyPubs, location.lat, location.lng);
        displayPubList(nearbyPubs);
      }
    }
           )
      .catch(error => console.error('Geocoding API Error:', error));
  }
  window.onload = function() {
    initMap();
    const postalCodeInput = document.getElementById('postalCode');
    postalCodeInput.addEventListener('keydown', function(event) {
      if (event.key === 'Enter') {
        event.preventDefault();
        updateMap();
      }
    }
                                    );
  };
</script>
<!-- Load Google Maps API with Places library -->
<script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=XXX&amp;libraries=places&amp;callback=initMap">
</script>
