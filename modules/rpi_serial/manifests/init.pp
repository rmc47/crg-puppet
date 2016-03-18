class rpi_serial {
	# Disable the RS232 console on the Pi, because it eats up the serial port
	exec { 'disable-console-tty':
		command => '/bin/sed -i "s/console=ttyAMA0[^\\ ]*\\ //" /boot/cmdline.txt',
		cwd => '/',
		unless => '/bin/grep -qv ttyAMA /boot/cmdline.txt',
	}
	exec { 'disable-console-tty-systemd':
		command => '/bin/systemctl mask serial-getty@ttyAMA0.service',
		# TODO: make this conditional
	}
}