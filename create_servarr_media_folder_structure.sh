#!/bin/bash

# Define the base directory where all three main folders will live
# Change this variable to your desired base path (e.g., /mnt/user/appdata/servarr_data)
BASE_DIR="/media/data"

# Define variables for the three main top-level directories
MEDIA_DIR="$BASE_DIR/media"
TORRENTS_DIR="$BASE_DIR/torrents"
USENET_DIR="$BASE_DIR/usenet"

# Function to create directories and check for errors
create_directory() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    else
        echo "Directory already exists: $1"
    fi
}

echo "Starting Servarr custom folder structure creation in $BASE_DIR..."

# Create variables for the top-level directories
create_directory "$MEDIA_DIR"
create_directory "$TORRENTS_DIR"
create_directory "$USENET_DIR"

# Define the categories (shared across all three main folders)
CATEGORIES=("movies" "music" "books" "tv")

# Create subdirectories for Media, Torrents, and Usenet
for category in "${CATEGORIES[@]}"; do
    create_directory "$MEDIA_DIR/$category"
    create_directory "$TORRENTS_DIR/$category"
    create_directory "$USENET_DIR/$category"
done

echo "Servarr custom folder structure setup complete!"
