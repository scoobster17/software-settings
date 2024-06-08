#!/bin/bash

curl -s "https://get.sdkman.io?rcupdate=false" | bash

source "/Users/philg/.sdkman/bin/sdkman-init.sh"

sdk install java 8.0.412-zulu
sdk install java 17.0.11-zulu