# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\PSU\Winter_2024\544\P2\ClosedLoopPID-MicroBlazeAXI-FreeRTOS\Robert\rtos_level_system\_ide\scripts\systemdebugger_rtos_level_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\PSU\Winter_2024\544\P2\ClosedLoopPID-MicroBlazeAXI-FreeRTOS\Robert\rtos_level_system\_ide\scripts\systemdebugger_rtos_level_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "RealDigital Boo 887222440502A" && level==0 && jtag_device_ctx=="jsn1-0362f093-0"}
fpga -file D:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert/rtos_level/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw D:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert/proj_2_rtos/export/proj_2_rtos/hw/booleanfpga.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow D:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert/rtos_level/Debug/rtos_level.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
