#!/bin/bash

# Path to your tf2 custom folder
path="/home/${USER}/.local/share/Steam/steamapps/common/Team Fortress 2/tf/custom/"

# Change this variable to be the preset you want
# If invalid is chosen, very low will be selected
# 1 = Ultra
# 2 = High
# 3 = Medium High
# 4 = Medium
# 5 = Medium Low
# 6 = Low
# 7 = Very Low
# 8 = None
preset=7

# For any of the addons, if an invalid number is assigned,
# the given Addon will not be installed

# Null-Cancelling Movement Addon
# 0 = No
# 1 = Yes
null_movement=0

# Flat Mouse Addon
# 0 = No
# 1 = Yes
flat_mouse=0

# No Tutorial Addon
# 0 = No
# 1 = Yes
no_tutorial=0

# Disable Pyroland Addon
# 0 = No
# 1 = Yes
pyroland=0

# No Footsteps Addon
# 0 = No
# 1 = Yes
footsteps=0

# No Soundscapes Addon
# 0 = No
# 1 = Yes
soundscapes=0

# Transparent Viewmodel Addon
# 0 = No
# 1 = Yes
transparent_viewmodel=0

# Low Memory Addon
# 0 = No
# 1 = Yes
low_mem=0

# Use Modules?
# 0 = No
# 1 = Yes
modules=1

# From this point onward, adjust the modules settings as you see fit
# They are set to default as mastercoms made them

# SourceTV
# 0 = No
# 1 = Yes
sourcetv=1

# Packet Rate
# 0 = standard
# 1 = congested
packet_rate=0

# Snapshot Buffer
# 0 = auto
# 1 = low
# 2 = safe
# 3 = high
snapshot_buffer=1

# Packet Size
# 0 = speed
# 1 = saver
# 2 = safe
# 3 = high
packet_size=0

# Bandwidth
# 0 = 8.0Mbps
# 1 = 6.0Mbps
# 2 = 4.0Mbps
# 3 = 3.0Mbps
# 4 = 2.5Mbps
# 5 = 2.0Mbps
# 6 = 1.5Mbps
# 7 = 1.0Mbps
# 8 = 762Kbps
# 9 = 512Kbps
# 10 = 384Kbps
# 11 = 192Kbps
# 12 = 128Kbps
bandwidth=8

# Download
# 0 = auto
# 1 = all
# 2 =  nosounds
# 3 = mapsonly
# 4 = none
download=0

# LOD
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
lod=0

# Lighting
# 0 = ultra
# 1 = very_high
# 2 = high
# 3 = medium_high
# 4 = medium
# 5 = low
# 6 = very_low
lighting=0

source update_backend.sh