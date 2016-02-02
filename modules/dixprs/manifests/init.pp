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

	# Make ourselves a nice config file from the template
	file { '/home/pi/dixprs/config.txt':
		ensure => file,
		content => template('dixprs/dixprsconfig.txt.erb'),
	}

	# Start DIXPRS on boot
	cron { 'dixprs-on-reboot':
		ensure => present,
		command => '/home/pi/dixprs/dixprs.py -c /home/pi/dixprs/config.txt',
		user => 'pi',
		special => 'reboot',
	}

	# Disable the RS232 console on the Pi, because it eats up the serial port
	exec { 'disable-console-tty':
		command => 'sed -i "s/console=ttyAMA0[^\\ ]*\\ //" /boot/cmdline.txt',
		cwd => '/',
		shell => true,
		unless => 'grep -q ttyAMA /boot/cmdline.txt',
	}
}