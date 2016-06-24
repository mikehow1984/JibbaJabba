function getGeoLocation(){
	var wpid;
	
	if(navigator.geolocation){
		wpid = navigator.geolocation.watchPosition(
			setGeoCookie,
			geoError,
			{
				timeout: 1000,
				enableHighAccuracy: true
			}
		);	
	}
}

function setGeoCookie(position){
	var cookie_val = position.coords.latitude + "|" + position.coords.longitude;
	document.cookie = "lat_lng=" + escape(cookie_val) + "; path=/;";
	console.log("Geolocation cookie created.");
}

function geoError(err){
	console.warn('ERROR(' +  err.code + '): ' +  err.message);
}
