class role_mb7ups_pi {
	include dixprs
	
	class { 'dixprs::params':
		callsign => 'MB7UPS',
		latitude => '52.17', 
		longitude => '0.7', 
		symbol => 'S#',
		beaconText => 'MB7UPS digipeater under construction',
	}
}