#! /bin/sh

FLASH_DIR="/dev/shm/"
SESSION_NAME="automotive"
WINDOW_FLASH="firespray"
WINDOW_CONSOLE="console"

DEVICE_NETWORK_SCRIPT="minicom_colossus_device_network.sh"

# WINDOW FLASH:
# 1st pane: host flashing command
# 2nd pane: device console
# 3rd pane: Aurix console
# 4th pane: tcu_muxer running

# new session with flash window
tmux new-session -d -n $WINDOW_FLASH -s $SESSION_NAME

# 1st pane: ready flashing commands
tmux send-keys -t 0 "export FLASH_DIR=$FLASH_DIR" Enter
tmux send-keys -t 0 "cd $FLASH_DIR/tools/flashtools/bootburn && sudo python3 ./flash_bsp_images.py -b p3710-10-a01 -D -P $FLASH_DIR/642-63710-0010-000_TS2"

# 2nd pane created
tmux split-window -v -p 80
# ready device term commands
tmux send-keys -t 1 "sudo minicom -o -w -D /dev/pts/"

# 3rd pane created
tmux split-window -h -p 60
# connect Aurix
tmux send-keys -t 2 "sudo minicom -D /dev/ttyACM1" Enter
sleep 0.2
tmux send-keys -t 2 Enter
tmux send-keys -t 2 "tegrarecovery x1 on" Enter
sleep 0.2
tmux send-keys -t 2 "tegrareset x1"
#sleep 0.2
#tmux send-keys -t 2 "tegrarecovery x1 off" Enter
#sleep 0.2
#tmux send-keys -t 2 "tegrareset x1"

# 4th pane created
tmux split-window -h -p 30
# start tcu_muxer
tmux send-keys -t 3 "sudo ./tcu_muxer -g 15 -b 14 -d /dev/ttyACM0" Enter


# CONSOLE WINDOW:
# 1st pane: ENTER to config host network
# 2nd pane: device network ready

# create console window
tmux new-window -n $WINDOW_CONSOLE

# ready host private network command
tmux send-keys -t 0 "sudo ifconfig eno3 192.168.2.200 up && sleep 5 && nmcli device status"

# split console window, keep cursor in 1st pane
tmux split-window -v -p 70
tmux select-pane -t 0

# ready device network command
tmux send-keys -t 1 "sudo killall minicom && sudo minicom -S $DEVICE_NETWORK_SCRIPT -o -w -D /dev/pts/"


# 1st pane for flash has input
tmux select-window -t "$SESSION_NAME:$WINDOW_FLASH"
tmux select-pane -t 0

# attach tmux
tmux attach -t $SESSION_NAME 
