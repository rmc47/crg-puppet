class role_mb7ups_pi {
	class {'dixprs':
		callsign => $callsign,
		latitude => $latitude,
		longitude => $longitude,
	}
}