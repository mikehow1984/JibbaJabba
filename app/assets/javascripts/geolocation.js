if (geoPosition.init()){  
	geoPosition.getCurrentPosition(geoSuccess, geoError);  
}


function geoSuccess(p){
	$.post('/usercoords', {lat:p.coords.latitude, long: p.coords.longitude});
}

function geoError(){
	alert("You must allow geolocation to use this service.");
}
