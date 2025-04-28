#!/bin/bash

# Get hostname
HOSTNAME=$(hostname)

# Get current working directory
CURRENT_DIR=$(pwd)

# Build the message
if [ $# -eq 0 ]; then
    MESSAGE="Task Done!

Host: ${HOSTNAME}
Directory: ${CURRENT_DIR}"
else
    MESSAGE="$*

Host: ${HOSTNAME}
Directory: ${CURRENT_DIR}"
fi

# Send the notification to Slack
curl -X POST -H 'Content-type: application/json' -d "{\"text\":\"$MESSAGE\"}" https://hooks.slack.com/services/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
