#!/bin/bash

# Get hostname
HOSTNAME=$(hostname)

# Get current working directory
CURRENT_DIR=$(pwd)

# Build the message
if [ $# -eq 0 ]; then
    MESSAGE="Task is done, on\n\nHost: ${HOSTNAME}\nDirectory: ${CURRENT_DIR}"
else
    MESSAGE="$*\n\nHost: ${HOSTNAME}\nDirectory: ${CURRENT_DIR}"
fi

# Send the notification to Slack
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"${MESSAGE}\"}" https://hooks.slack.com/services/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
