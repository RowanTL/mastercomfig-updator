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
preset=5

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
modules=0

# From this point onward, adjust the modules settings as you see fit
# They are set to default as no choice

# SourceTV
# 0 = no
# 1 = yes
# 2 = No Choice
sourcetv=2

# Packet Rate
# 0 = standard
# 1 = congested
# 2 = No Choice
packet_rate=2

# Snapshot Buffer
# 0 = auto
# 1 = low
# 2 = safe
# 3 = high
# 4 = No Choice
snapshot_buffer=4

# Packet Size
# 0 = speed
# 1 = saver
# 2 = safe
# 3 = high
# 4 = No Choice
packet_size=4

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
# 13 = No Choice
bandwidth=13

# Download
# 0 = auto
# 1 = all
# 2 =  nosounds
# 3 = mapsonly
# 4 = none
# 5 = No Choice
download=5

# LOD
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
# 4 = No Choice
lod=4

# Lighting
# 0 = ultra
# 1 = very_high
# 2 = high
# 3 = medium_high
# 4 = medium
# 5 = low
# 6 = very_low
# 7 = No Choice
lighting=7

# Lighting EX
# 0 = high
# 1 = low
# 2 = No Choice
lighting_ex=2

# Shadows
# 0 = ultra
# 1 = very_high
# 2 = high
# 3 = medium_high
# 4 = medium
# 5 = low
# 6 = very_low
# 7 = No Choice
shadows=7

# Effects
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
# 4 = No Choice
effects=4

# Water
# 0 = ultra
# 1 = very_high
# 2 = high
# 3 = medium_high
# 4 = medium
# 5 = low
# 6 = very_low
# 7 = No Choice
water=7

# Particles
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
# 4 = very low
# 5 = No Choice
particles=5

# Post Processing
# 0 = high
# 1 = medium
# 2 = low
# 3 = off
# 4 = No Choice
post_processing=4

# Pyrovision
# 0 = high
# 1 = medium
# 2 = low
# 3 = No Choice
pyrovision=3

# Motion Blur
# 0 = high
# 1 = low
# 2 = off
# 3 = No Choice
motion_blur=3

# Anti Aliasing
# 0 = msaa_8x
# 1 = msaa_4x
# 2 = msaa_2x
# 3 = off
# 4 = No Choice
anti_aliasing=4



source update_backend.sh