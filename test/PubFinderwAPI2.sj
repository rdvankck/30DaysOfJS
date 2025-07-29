// Last but CSS will be update!

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    // --- DATA and API KEYS ---
   const mapsApiKey = "AIzaSyDSzDA6LCEpatRQd6wY-jwwnKTpD3xjLVo"; 
    const geocodeApiKey = "AIzaSyDSzDA6LCEpatRQd6wY-jwwnKTpD3xjLVo"; 
    
   const pubData = [{
    outlet_local_id:1057,outlet_name:"The FX",outlet_address_street_1:"106 Hare Ln",outlet_address_city:"Claygate",outlet_address_postalcode:"XX 0LZ",outlet_address_location_lat:51.3597868,outlet_address_location_lon:-.3450963,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                   ,{
                     outlet_local_id:1332,outlet_name:"Teller's AX",outlet_address_street_1:"75 Castle St",outlet_address_city:"Farnham",outlet_address_postalcode:"GU9 XX",outlet_address_location_lat:51.2153745,outlet_address_location_lon:-.7990535,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                   ,{
                     outlet_local_id:1363,outlet_name:"Tattenham CX",outlet_address_street_1:"Tattenham Crescent",outlet_address_city:"Epsom",outlet_address_postalcode:"XX 5NY",outlet_address_location_lat:51.3099229,outlet_address_location_lon:-.2438481,outlet_address_country_name:"England",outlet_address_country_id:"GB",outlet_channel:"On trade",outlet_categories:"Managed",outlet_type:"Pub",outlet_group:"xx"}
                  ];

    let mapComponent, placesService;
    let userLocation = null;
    let userMarker = null;
    let currentMarkers = [];
    let pubsWithDetails = []; // Store pubs with details globally
    let selectedPubMarker = null;
    const placeIdCache = new Map();
    
    // --- Marker Icons ---
    const iconBase = 'https://maps.google.com/mapfiles/ms/icons/';
    const markerIcons = {
      user: iconBase + 'blue-dot.png',
      pub: iconBase + 'red-dot.png',
      selectedPub: iconBase + 'green-dot.png'
    };
    
    // --- INITIALIZATION ---
    async function init() {
      try {
        await google.maps.importLibrary("maps");
        await google.maps.importLibrary("places");
        mapComponent = document.getElementById('gmp-map');
        placesService = new google.maps.places.PlacesService(mapComponent.innerMap);
        
        document.getElementById('postalCode').addEventListener('keydown', (e) => {
          if (e.key === 'Enter') {
            e.preventDefault();
            updateMap();
          }
        });
        
        // Add directions button event listener
        document.getElementById('getDirectionsBtn').addEventListener('click', () => {
          const userPostcode = document.getElementById('postalCode').value.trim();
          const pubPostcode = document.getElementById('outlet_address_postalcode').value;
          
          if (userPostcode && pubPostcode) {
            const directionsUrl = `https://www.google.com/maps/dir/${encodeURIComponent(userPostcode)}/${encodeURIComponent(pubPostcode)}`;
            window.open(directionsUrl, '_self');
          } else {
            alert('Please enter your postcode and select a pub first.');
          }
        });
      } catch (e) {
        console.error("Could not initialize Google Maps", e);
      }
    }

    // --- CORE FUNCTIONS ---
    async function updateMap() {
        const postalCode = document.getElementById('postalCode').value.trim();
        if (!postalCode) return;

        const pubInfo = document.getElementById('pubInfo');
        const loadingHTML = `<div class="col-12 text-center py-5"><div class="spinner-border text-primary" role="status"><span class="visually-hidden">Loading...</span></div><p class="mt-2">Finding nearby pubs...</p></div>`;
        document.getElementById('pubList').innerHTML = loadingHTML;
        if(document.querySelector('#pubList-mobile .carousel-inner')) document.querySelector('#pubList-mobile .carousel-inner').innerHTML = loadingHTML;
        
        pubInfo.style.display = 'block';
        document.querySelector('.map-container').classList.remove('details-visible');
        document.getElementById('submitSection').style.display = 'none';
        document.getElementById('selectedBar').value = '';

        try {
            const geoResponse = await fetch(`https://maps.googleapis.com/maps/api/geocode/json?address=${encodeURIComponent(postalCode)}&key=${geocodeApiKey}`);
            const geoData = await geoResponse.json();

            if (geoData.status !== "OK" || !geoData.results.length) {
                throw new Error("Postcode not found.");
            }

            const res = geoData.results[0];
            userLocation = res.geometry.location;
            mapComponent.center = userLocation;
            mapComponent.zoom = 11;

            if (userMarker) userMarker.setMap(null);
            userMarker = new google.maps.Marker({
                position: userLocation,
                map: mapComponent.innerMap,
                title: 'Your Location',
                icon: markerIcons.user
            });

            document.getElementById("latitude").value = userLocation.lat;
            document.getElementById("longitude").value = userLocation.lng;
            document.getElementById("country").value = res.address_components.find(c => c.types.includes("country"))?.long_name || "";
            document.getElementById("city").value = res.address_components.find(c => c.types.includes("postal_town"))?.long_name || "";

            const nearbyPubs = findNearbyPubs(userLocation.lat, userLocation.lng);
            const detailPromises = nearbyPubs.map(pub => getEnhancedPubDetails(pub));
            pubsWithDetails = await Promise.all(detailPromises); // Store globally

            addPubMarkers(pubsWithDetails);
            displayPubs(pubsWithDetails);
          
          if (window.innerWidth < 992) {
            const mobilePubList = document.getElementById('pubList-mobile');
            if (mobilePubList) {
             
              mobilePubList.scrollIntoView({ behavior: 'smooth', block: 'start' });
            }
          }

        } catch (err) {
            console.error('Update Map Error:', err);
            pubInfo.innerHTML = `<div class="col-12 text-center py-5"><p class="text-danger">An error occurred: ${err.message}</p></div>`;
        }
    }

    function findNearbyPubs(lat, lng) {
      const toRad = v => v * Math.PI / 180;
      const R = 6371; // Earth radius in km
      return pubData.map(pub => {
        const dLat = toRad(pub.outlet_address_location_lat - lat);
        const dLon = toRad(pub.outlet_address_location_lon - lng);
        const a = Math.sin(dLat / 2) ** 2 + Math.cos(toRad(lat)) * Math.cos(toRad(pub.outlet_address_location_lat)) * Math.sin(dLon / 2) ** 2;
        return { ...pub, distance: R * 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a)) };
      }).sort((a, b) => a.distance - b.distance).slice(0, 6);
    }

    async function getEnhancedPubDetails(pub) {
        const placeId = await getPlaceIdForPub(pub);
        if (!placeId) return { ...pub, details: null };

        return new Promise((resolve) => {
            placesService.getDetails({ placeId, fields: ['photos', 'rating', 'formatted_phone_number'] }, (place, status) => {
                resolve({ ...pub, details: (status === google.maps.places.PlacesServiceStatus.OK && place) ? place : null });
            });
        });
    }

    function addPubMarkers(pubs) {
      clearMarkers();
      const bounds = new google.maps.LatLngBounds();
      pubs.forEach((pub, index) => {
          const marker = new google.maps.Marker({
              position: { lat: pub.outlet_address_location_lat, lng: pub.outlet_address_location_lon },
              map: mapComponent.innerMap,
              title: pub.outlet_name,
              icon: markerIcons.pub
          });
          marker.addListener('click', () => selectPub(pub, marker));
          currentMarkers.push(marker);
          bounds.extend(marker.getPosition());
      });
      if (userMarker) bounds.extend(userMarker.getPosition());
      if (currentMarkers.length > 0) mapComponent.innerMap.fitBounds(bounds);
    }

    function createPubCardHTML(pub) {
        const details = pub.details;
        const photoUrl = details?.photos?.[0]?.getUrl() || `https://ui-avatars.com/api/?name=${encodeURIComponent(pub.outlet_name)}&background=e9ecef&color=343a40&bold=true`;
        const rating = details?.rating?.toFixed(1) || 'N/A';
        const phone = details?.formatted_phone_number || 'N/A';

        const cardHTML = `
            <div class="pub-card-photo">
                <img src="${photoUrl}" alt="Photo of ${pub.outlet_name}">
            </div>
            <div class="pub-card-info">
                <h6 class="pub-card-name mb-1">${pub.outlet_name}</h6>
                <p class="pub-card-address text-muted small mb-2">${pub.outlet_address_street_1}, ${pub.outlet_address_postalcode}</p>
            </div>
        `;
        
        const ratingDistancePhoneHTML = `
            <div class="text-center d-lg-none">
                <div class="rating-distance-phone-row">
                    <span class="rating-item">⭐ ${rating}</span>
                    <span class="distance-item">📍 ${pub.distance.toFixed(2)}km</span>
                    <button class="call-btn" onclick="window.open('tel:${phone}')">
                        <i class="fas fa-phone"></i> Call
                    </button>
                </div>
            </div>
        `;

        return { cardHTML, ratingDistancePhoneHTML };
    }

    function displayPubs(pubs) {
        const desktopList = document.getElementById('pubList');
        const mobileCarouselEl = document.getElementById('pubList-mobile');
        const mobileCarouselInner = mobileCarouselEl.querySelector('.carousel-inner');
        const pubInfo = document.getElementById('pubInfo');

        const existingCarouselInstance = bootstrap.Carousel.getInstance(mobileCarouselEl);
        if (existingCarouselInstance) {
            existingCarouselInstance.dispose();
        }
        
        desktopList.innerHTML = '';
        mobileCarouselInner.innerHTML = '';

        if (pubs.length > 0) {
            pubInfo.style.display = 'block';

            pubs.forEach((pub, index) => {
                const pubCardData = createPubCardHTML(pub);

                // Desktop Grid Item
                const desktopCard = document.createElement('div');
                desktopCard.className = 'pub-card';
                desktopCard.dataset.pubId = pub.outlet_local_id;
                desktopCard.innerHTML = pubCardData.cardHTML;
                desktopCard.addEventListener('click', () => selectPub(pub, currentMarkers[index]));
                desktopList.appendChild(desktopCard);

                // Mobile Carousel Item
                const carouselItem = document.createElement('div');
                carouselItem.className = `carousel-item${index === 0 ? ' active' : ''}`;
                carouselItem.innerHTML = `
                    <div class="pub-card" data-pub-id="${pub.outlet_local_id}">
                        ${pubCardData.cardHTML}
                    </div>
                    ${pubCardData.ratingDistancePhoneHTML}
                `;
                mobileCarouselInner.appendChild(carouselItem);
            });

            const newCarouselInstance = new bootstrap.Carousel(mobileCarouselEl, { interval: false, wrap: false });
            mobileCarouselEl.addEventListener('slide.bs.carousel', event => {
                if (pubsWithDetails[event.to] && currentMarkers[event.to]) {
                    selectPub(pubsWithDetails[event.to], currentMarkers[event.to], true);
                }
            });
            
            if (pubs.length > 0) {
                selectPub(pubs[0], currentMarkers[0], window.innerWidth < 992);
            }

        } else {
            pubInfo.style.display = 'none';
        }
    }
    
    async function selectPub(pub, marker, isMobile = false) {
      if (selectedPubMarker) {
          selectedPubMarker.setIcon(markerIcons.pub);
      }
      marker.setIcon(markerIcons.selectedPub);
      selectedPubMarker = marker;

      document.querySelectorAll('.pub-card').forEach(c => c.classList.remove('selected'));
      document.querySelectorAll(`.pub-card[data-pub-id='${pub.outlet_local_id}']`).forEach(c => c.classList.add('selected'));
      
      document.getElementById('selectedBar').value = pub.outlet_name || "";
      document.getElementById('outlet_local_id').value = pub.outlet_local_id || "";
      document.getElementById('outlet_address_street_1').value = pub.outlet_address_street_1 || "";
      document.getElementById('outlet_address_postalcode').value = pub.outlet_address_postalcode || "";
      document.getElementById('outlet_address_city').value = pub.outlet_address_city || "";
      document.getElementById('outlet_address_location_lon').value = pub.outlet_address_location_lon || "";
      document.getElementById('outlet_address_location_lat').value = pub.outlet_address_location_lat || "";

      document.getElementById('submitSection').style.display = 'block';
      
      // Show directions section if we have a pub selected
      if (isMobile) {
          document.getElementById('directionsSection').style.display = 'block';
      }

      if (!isMobile) {
          const placeId = await getPlaceIdForPub(pub);
          showPlaceDetails(placeId, pub);
      } else {
          mapComponent.panTo(marker.getPosition());
      }
    }
    
    async function getPlaceIdForPub(pub) {
        if (placeIdCache.has(pub.outlet_local_id)) {
            return placeIdCache.get(pub.outlet_local_id);
        }
        const request = {
            textQuery: `${pub.outlet_name}, ${pub.outlet_address_city}`,
            fields: ['id'],
            locationBias: { lat: pub.outlet_address_location_lat, lng: pub.outlet_address_location_lon }
        };
        try {
            const { places } = await google.maps.places.Place.searchByText(request);
            if (places && places.length > 0) {
                placeIdCache.set(pub.outlet_local_id, places[0].id);
                return places[0].id;
            }
        } catch (e) {
            console.warn("Could not find Place ID for:", pub.outlet_name, e);
        }
        return null;
    }

    function showPlaceDetails(placeId, pub) {
        if (window.innerWidth < 992 || !pub) return;

        document.querySelector('.map-container').classList.add('details-visible');
        const detailsPanel = document.getElementById('place-details-panel');
        const placeRequest = document.getElementById('place-request');
        detailsPanel.style.display = 'block';

        if (!placeId) {
            // Fallback for pubs without a Google Place ID
            placeRequest.removeAttribute('place');
            detailsPanel.innerHTML = `<h5>${pub.outlet_name}</h5><p><strong>Address:</strong> ${pub.outlet_address_street_1}, ${pub.outlet_address_city}</p><p class="text-muted">More details could not be loaded.</p>`;
            return;
        }

        // Set the place ID for the place details component (Google UI Kit)
        placeRequest.setAttribute('place', placeId);
        // Ensure the UI kit is visible (do not overwrite the panel's innerHTML)
    }

    function clearMarkers() {
      currentMarkers.forEach(marker => marker.setMap(null));
      currentMarkers = [];
    }
    </script>

    <script>
      (g => { var h, a, k, p = "The Google Maps JavaScript API", c = "google", l = "importLibrary", q = "__ib__", m = document, b = window; b = b[c] || (b[c] = {}); var d = b.maps || (b.maps = {}), r = new Set, e = new URLSearchParams, u = () => h || (h = new Promise(async (f, n) => { await (a = m.createElement("script")); e.set("libraries", "maps,places"); for (k in g) e.set(k.replace(/[A-Z]/g, t => "_" + t[0].toLowerCase()), g[k]); e.set("callback", c + ".maps."+q); a.src = `https://maps.${c}apis.com/maps/api/js?`+e; d[q]=f; a.onerror=()=>h=n(Error(p+" could not load.")); a.nonce=m.querySelector("script[nonce]")?.nonce||""; m.head.append(a) })); d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n)) })({ key: mapsApiKey, v: "weekly" });
      window.onload = init;
    </script>
</body>
</html>
