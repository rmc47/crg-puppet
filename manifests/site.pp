node 'mb7ups-pi','ubuntu-test' {
	include crg_common
	include role_mb7ups_pi
}
node 'mb7upi' {
	include crg_common
	include role_mb7upi_pi
}
node 'mb7upi-vm' {
	include crg_common
	include role_mb7upi_vm
}