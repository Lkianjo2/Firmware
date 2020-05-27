add_definitions(
	-D__PX4_LINUX
)

px4_add_board(
	VENDOR nxp
	MODEL imx6
	LABEL default
	PLATFORM posix
	ARCHITECTURE cortex-a8
	TOOLCHAIN arm-unknown-nto-qnx7.0.0eabi
	TESTING
	DRIVERS		
	MODULES
	SYSTEMCMDS
	EXAMPLES
		hello
	)
