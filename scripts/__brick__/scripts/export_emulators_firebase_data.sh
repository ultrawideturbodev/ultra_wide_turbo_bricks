#!/bin/bash

# Create exports directory if it doesn't exist
mkdir -p ../exports

# Export Authentication data
firebase emulators:export ../exports

# Note: This will export all emulator data including:
# - Authentication
# - Firestore
# - Storage
