#
#
#
# J-LINK GDB SERVER initialization
#
# This connects to a GDB Server listening
# for commands on localhost at tcp port 2331
target extended-remote localhost:2331
monitor speed 30
monitor reset
#
# CPU core initialization (to be done by user)
#
# Set the processor mode
# monitor reg cpsr = 0xd3
# Set auto JTAG speed
monitor speed auto

# Setup GDB FOR FASTER DOWNLOADS
set remote memory-write-packet-size 1024
set remote memory-write-packet-size fixed

load

break reset_handler
commands
  up
end

run
