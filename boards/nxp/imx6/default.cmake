add_definitions(
	-D__PX4_LINUX
        -DQNX=1
)

px4_add_board(
	VENDOR nxp
	MODEL imx6
	LABEL default
	PLATFORM posix
	ARCHITECTURE cortex-a8
	TOOLCHAIN arm-unknown-nto-qnx7.0.0eabi
        CONSTRAINED_FLASH
        DRIVERS
	MODULES
		commander
		ekf2
		land_detector
		mc_att_control
		mc_pos_control
		navigator
        SYSTEMCMDS
                bl_update
                hardfault_log
                mixer
                mtd
                param
                pwm
                reboot
                top
                tune_control
                ver
        EXAMPLES
                #hello
	)
