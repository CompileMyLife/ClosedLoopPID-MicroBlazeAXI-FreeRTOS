# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\PSU\Winter_2024\544\P2\ClosedLoopPID-MicroBlazeAXI-FreeRTOS\Robert\proj_2_rtos\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\PSU\Winter_2024\544\P2\ClosedLoopPID-MicroBlazeAXI-FreeRTOS\Robert\proj_2_rtos\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {proj_2_rtos}\
-hw {D:\PSU\Winter_2024\544\P2\ClosedLoopPID-MicroBlazeAXI-FreeRTOS\Robert\rtl\booleanfpga.xsa}\
-proc {microblaze_0} -os {freertos10_xilinx} -out {D:/PSU/Winter_2024/544/P2/ClosedLoopPID-MicroBlazeAXI-FreeRTOS/Robert}

platform write
platform generate -domains 
platform active {proj_2_rtos}
bsp reload
bsp config xmdstub_peripheral "mdm_1"
bsp config xmdstub_peripheral "none"
bsp config use_counting_semaphores "false"
bsp config use_mutexes "false"
bsp config use_recursive_mutexes "false"
bsp config software_timers "false"
bsp config total_heap_size "512"
bsp config use_port_optimized_task_selection "true"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
bsp reload
platform active {proj_2_rtos}
bsp reload
platform generate
bsp config xmdstub_peripheral "none"
bsp config xmdstub_peripheral "mdm_1"
bsp write
bsp reload
catch {bsp regenerate}
bsp config xmdstub_peripheral "none"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp config total_heap_size "1024"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp config total_heap_size "2048"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp config total_heap_size "512"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp config total_heap_size "4096"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp config total_heap_size "8192"
bsp config use_preemption "true"
bsp config max_priorities "5"
bsp config use_task_notifications "false"
bsp config use_trace_facility "false"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains freertos10_xilinx_domain 
bsp reload
bsp reload
bsp reload