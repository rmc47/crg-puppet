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

	cron { 'dixprs-on-reboot':
		ensure => present,
		command => '/home/pi/dixprs/dixprs.py -c /home/pi/dixprs/config.txt',
		user => 'pi',
		special => 'reboot',
	}
}