#!/bin/bash

# Path to your tf2 custom folder
path="/home/${USER}/.local/share/Steam/steamapps/common/Team Fortress 2/tf/custom/"

# Change this variable to be the preset you want
# If invalid is chosen, 7 very low will be selected
# 1 = Ultra
# 2 = High
# 3 = Medium High
# 4 = Medium
# 5 = Medium Low
# 6 = Low
# 7 = Very Low
preset=5

# For any of the addons, if an invalid number is assigned,
# the given Addon will not be installed

# Null-Cancelling Movement Addon
# 0 = No
# 1 = Yes
null_movement=1

# Flat Mouse Addon
# 0 = No
# 1 = Yes
flat_mouse=1

# No Tutorial Addon
# 0 = No
# 1 = Yes
no_tutorial=1

# Disable Pyroland Addon
# 0 = No
# 1 = Yes
pyroland=1

# No Footsteps Addon
# 0 = No
# 1 = Yes
footsteps=0

# No Soundscapes Addon
# 0 = No
# 1 = Yes
soundscapes=1

# Transparent Viewmodel Addon
# 0 = No
# 1 = Yes
transparent_viewmodel=0

# Low Memory Addon
# 0 = No
# 1 = Yes
low_mem=0

source update_backend.sh