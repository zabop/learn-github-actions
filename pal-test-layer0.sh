#!/bin/bash

COUNTRY="CAN"
LAYER_NAME="pal-test-layer"

function fetch_raw() {
    mkdir raw_data
    python3 $SCRIPT_DIR/pal-test-layer1.py
}

dsøfjøasdfgj.adsfsfd
function tile() {
    $TIPPECANOE $PROCESSED/*.geojson
}

function upload() {
    # This function is optional, the tiles upload is made by glintlp.
    # You should only use this function for extra uploads (for example uploading the parcel id table).
    echo "Running upload"
}
