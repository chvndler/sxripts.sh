#!/bin/bash

# project_name/
# |-- source-footage/
# |-- project-files/
# |   |-- premiere/
# |   |-- after-effects/
# |-- assets/
# |   |-- sound/
# |   |-- stock/
# |   |-- ae-exports/
# |-- exports/


# Check if at least project name is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 project_name [destination_path]"
    exit 1
fi

PROJECT_NAME=$1

# If a path is provided, use it. Otherwise, default to /Volumes/MyExternalSSD/index/Projects.
DESTINATION_PATH=${2:-/Volumes/MyExternalSSD/index/NewProjects}


# Create the directory structure
mkdir -p "$DESTINATION_PATH/$PROJECT_NAME"/source-footage
mkdir -p "$DESTINATION_PATH/$PROJECT_NAME"/project-files/{premiere,after-effects}
mkdir -p "$DESTINATION_PATH/$PROJECT_NAME"/assets/{sound,stock,ae-exports}
mkdir -p "$DESTINATION_PATH/$PROJECT_NAME"/exports

echo "Project structure for '$PROJECT_NAME' created successfully at $DESTINATION_PATH/$PROJECT_NAME!"


# Example execute:

# setup_new_project.sh NewProjectName

# path:// → /Volumes/Samsung\ T7SSD/index
