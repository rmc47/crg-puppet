class dixprs {
	require dixprs::install

	file { '/home/pi/dixprs/config.txt':
		ensure => file,
		content => template('dixprs/dixprsconfig.txt.erb'),
		require => Class['dixprs::params'],
	}
}