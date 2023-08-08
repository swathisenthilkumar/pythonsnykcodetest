#!/bin/bash
echo "Hello, World!"
SNYK_TOKEN="$1"
curl -Lo ./snyk "https://github.com/snyk/snyk/releases/download/v1.1200.0/snyk-linux"
        chmod +x snyk
        ls -lrt
        echo "----------Authenticating Snyk-----------"
         ./snyk auth $SNYK_TOKEN
        echo "----------Snyk code Scanning-----------"
         ./snyk code test --report --project-name="pythonsnykcodetest"
        
