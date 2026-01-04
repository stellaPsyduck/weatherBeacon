#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: Something is wrong with the provided python script path."
  exit 1
fi

SCRIPT_PATH="$1"
PYTHON_PATH="/usr/bin/python3"

CRON_ENTRY="0 7,11,15,19 * * * $PYTHON_PATH $SCRIPT_PATH" # >> /home/Documents/weatherBeacon/task_scheduler.log 2>&1"

# Avoid duplicate entries
(crontab -l 2>/dev/null | grep -v "$SCRIPT_PATH" ; echo "$CRON_ENTRY") | crontab -

echo "The weather will now be scraped at 7:00, 11:00, 15:00, and 19:00 every day."
