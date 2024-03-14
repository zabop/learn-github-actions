#!/bin/bash

COUNTRY="CAN"
LAYER_NAME="pal-test-layer"

function fetch_raw() {
    mkdir raw_data
    python3 "${SCRIPT_DIR}/pal-test-layer1.py"
}

function process() {
  mv raw_data/source.geojson processed/source.geojson
}

function tile() {
    $TIPPECANOE "${PROCESSED}"/*.geojson
}

function upload() {
    # This function is optional, the tiles upload is made by glintlp.
    # You should only use this function for extra uploads (for example uploading the parcel id table).
    echo "Running upload"
}
