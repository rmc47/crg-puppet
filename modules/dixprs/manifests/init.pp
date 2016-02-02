class dixprs (
	$callsign, 
	$longitude, 
	$latitude, 
	$symbol,
	$beaconText,
	$aprsisHost,
	$aprsisFilter,
	$kissPort,
	$serialSpeed
	) {
	
	require dixprs::install

	file { '/home/pi/dixprs/config.txt':
		ensure => file,
		content => template('dixprs/dixprsconfig.txt.erb'),
	}
}