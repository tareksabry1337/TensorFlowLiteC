#!/bin/bash

get_tensorflowlite_version() {
    grep -A 2 "TensorFlowLite" Podfile.lock | grep -o '\b[0-9]\{1,2\}\.[0-9]\{1,2\}\.[0-9]\{1,2\}\b' | awk 'NR==1'
}

if [ -f "last_synced_version.txt" ]; then
    saved_version=$(cat last_synced_version.txt)
    echo "Saved TensorFlowLite version: $saved_version"
    
    current_version=$(get_tensorflowlite_version)
    echo "Current TensorFlowLite version: $current_version"
    
    # Compare versions
    if [ "$saved_version" = "$current_version" ]; then
        echo "TensorFlowLite version is up to date. Exiting early."
        exit 0
    else
        echo "TensorFlowLite version has changed. Continuing..."
    fi
else
    echo "last_synced_version.txt not found. Proceeding with the installation."
fi
