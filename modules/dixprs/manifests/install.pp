class dixprs::install {
	# Clone the DIXPRS repo from GitHub
	vcsrepo { "/home/pi/dixprs":
		ensure => latest,
		provider => git,
		source => 'https://github.com/rmc47/DIXPRS.git',
		require => [ Package['git'] ],
		user => 'pi',
		revision => 'master',
	}
	->
	file {'/home/pi/dixprs/dixprs.py':
		mode => 755,
	}
}