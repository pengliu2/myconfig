#! /bin/sh

FLASH_DIR="/dev/shm/"

# new session
tmux new-session -d -n "firesplay" -s "automotive"

# 1st pane: ready flashing commands
tmux send-keys -t 0 "export FLASH_DIR=$FLASH_DIR" Enter
tmux send-keys -t 0 "cd $FLASH_DIR/tools/flashtools/bootburn && sudo python3 ./flash_bsp_images.py -b p3710-10-a01 -D -P $FLASH_DIR/642-63710-0010-000_TS2"

# 2nd pane created
tmux split-window -v
# ready device term commands
tmux send-keys -t 1 "sudo minicom -o -w -D /dev/pts/"

# 3rd pane created
tmux split-window -h -p 70
# start tcu_muxer
tmux send-keys -t 2 "sudo ./tcu_muxer -g 15 -b 14 -d /dev/ttyACM0" Enter

# 4th pane created
tmux split-window -h
# connect Aurix and put x1 to recovery
tmux send-keys -t 3 "sudo minicom -D /dev/ttyACM0" Enter
sleep 0.1
tmux send-keys -t 3 "tegrarecovery x1 on" Enter
sleep 0.1
tmux send-keys -t 3 "tegrareset x1" Enter
sleep 0.1
tmux send-keys -t 3 "tegrarecovery x1 off" Enter
sleep 0.1
tmux send-keys -t 3 "tegrareset x1"

# 1st pane has input
tmux select-pane -t 0

# attach tmux
tmux attach -t automovive
