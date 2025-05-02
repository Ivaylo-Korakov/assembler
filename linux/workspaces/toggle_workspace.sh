#!/bin/bash
# This script toggles between the current workspace and a special workspace.

# The previous workspace is stored in a file
PREVIOUS_WORKSPACE=$(<~/.config/previously_used_workspace)
# The workspace number of the special workspace
SPECIAL_WORKSPACE=5
# Get the current workspace
CURRENT_WORKSPACE=$(wmctrl -d | grep '*' | cut -d ' ' -f 1)

# Switch to a workspace
switch_workspace() {
  echo "Switched to workspace $1"
  wmctrl -s $1
}

# Store the previous workspace in a file
store_previous_workspace() {
  echo "Setting previous workspace: $CURRENT_WORKSPACE"
  echo $CURRENT_WORKSPACE > ~/.config/previously_used_workspace
}

# If we are on the special workspace, go to the previous workspace
# Otherwise, go to the special workspace
if [ $CURRENT_WORKSPACE -eq $SPECIAL_WORKSPACE ]; then
  switch_workspace $PREVIOUS_WORKSPACE
else
  store_previous_workspace
  switch_workspace $SPECIAL_WORKSPACE
fi

