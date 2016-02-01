class dixprs {
	require dixprs::install
	require dixprs::params

	file { '/home/pi/dixprs/config.txt':
		ensure => file,
		content => template('dixprsconfig.txt.erb'),
	}
}