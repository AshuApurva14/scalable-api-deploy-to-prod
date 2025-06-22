#!/usr/bin/env bash

set -e

MAX_RETRY=20
RETRY_COUNT=0

echo "Let's check the service health"

HTTPS_STATUS=$(curl -s -o /dev/null -w "%{http_code} http://localhost:5000/health)

while true; do 

   if [[ "$HTTPS_STATUS" == "200" ]]; then
    
       echo "Service is up and running!......."
       break

   else
       echo "Service is still starting !..........."
       sleep 5

       if [[ $RETRY_COUNT -ge $MAX_RETRY ]]; then

         echo "Max retries reached."
         exit 1
       fi
    fi

done


   