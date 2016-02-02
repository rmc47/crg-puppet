class role_mb7ups_pi {
	class {'dixprs':
		callsign => hiera("dixprs::callsign"),
		latitude => hiera("dixprs::latitude"),
		longitude => hiera("dixprs::longitude"),
	}
}