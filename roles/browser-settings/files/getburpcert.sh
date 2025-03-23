#!/bin/bash

burp="/opt/BurpSuiteCommunity/burpsuite_community.jar"
java_path="/opt/BurpSuiteCommunity/jre/bin/java"

# Launch Burp in headless mode to generate the CA cert
timeout 45 "$java_path" -Djava.awt.headless=true -jar "$burp" < <(echo y) &

# Wait for the local web server to be up
sleep 30

# Download CA certificate from localhost:8080
curl http://localhost:8080/cert -o /tmp/cacert.der

exit

