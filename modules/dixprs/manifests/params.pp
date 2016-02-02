class dixprs::params(
	$callsign = hiera("dixprs::callsign"), 
	$longitude = hiera("dixprs::longitude"), 
	$latitude = hiera("dixprs::latitude"), 
	$symbol = hiera("dixprs::symbol"),
	$beaconText = hiera("dixprs::beaconText"),
	$aprsisHost = hiera("dixprs::aprsisHost"),
	$aprsisFilter = hiera("dixprs::aprsisFilter"),
	$kissPort = hiera("dixprs::kissPort"),
	$serialSpeed = hiera("dixprs::serialSpeed")
	) {

	}