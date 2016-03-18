class role_mb7upi_vm {
	user {'pi':
		ensure => present,
		home => '/home/pi',
		groups => 'dialout',
		managehome => true,
	}
	->
	class {'dixprs':
		callsign => hiera("dixprs::callsign"),
		latitude => hiera("dixprs::latitude"),
		longitude => hiera("dixprs::longitude"),
		serialSpeed => hiera("dixprs::serialSpeed"),
		kissPort => hiera("dixprs::kissPort"),
	}
}