#!/bin/bash

LOG_FILE="logs/monitor.log"
THRESHOLD=2

mkdir -p logs

while read -r url
do
  [[ -z "$url" ]] && continue

  RESPONSE=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$url")

  STATUS=$(awk '{print $1}' <<< "$RESPONSE")
  TIME=$(awk '{print $2}' <<< "$RESPONSE")

  # Handle unreachable URLs
  if [[ "$STATUS" == "000" || -z "$TIME" ]]; then
    echo "$(date) | ALERT | $url | Status:UNREACHABLE | Time:N/A" >> "$LOG_FILE"
    continue
  fi

  # Compare time safely
  TIME_EXCEEDED=$(echo "$TIME > $THRESHOLD" | bc)

  if [[ "$STATUS" -ne 200 || "$TIME_EXCEEDED" -eq 1 ]]
  then
    echo "$(date) | ALERT | $url | Status:$STATUS | Time:$TIME" >> "$LOG_FILE"
  else
    echo "$(date) | OK | $url | Status:$STATUS | Time:$TIME" >> "$LOG_FILE"
  fi

done < url.txt
