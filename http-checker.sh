#!/bin/bash
url=$1
http_code=$(curl --write-out '%{http_code}' --silent --output /dev/null $1)

if [[ $http_code -eq 200 ]]; then
 echo "OK: Recieved status code $http_code"
elif [ $http_code -eq 404 ] || [ $http_code -eq 403 ] || [ $http_code -eq 401 ]; then
 echo "WARNING: Check your credentials or if page exists (Code $http_code)"
elif [ $http_code -eq 500 ] || [ $http_code -eq 502 ] || [ $http_code -eq 503 ] || [ $http_code -eq 400 ]; then
 echo "CRITICAL: Something went wrong (Code $http_code)"
elif [ $http_code -eq 301 ] || [ $http_code -eq 302 ]; then
 echo "Redirect codes handled (Code $http_code)"
else
 echo "INFO: Unhandled status code (Code $http_code)"
fi
