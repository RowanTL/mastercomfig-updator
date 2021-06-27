#!/bin/bash

# Path to your tf2 custom folder
path="/home/${USER}/.local/share/Steam/steamapps/common/Team Fortress 2/tf/custom/"

# Change this variable to be the preset you want
# If an invalid number is chosen, medium low will be selected
# 0 = Ultra
# 1 = High
# 2 = Medium High
# 3 = Medium
# 4 = Medium Low
# 5 = Low
# 6 = Very Low
# 7 = None
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

# Use Modules?
# 0 = No
# 1 = Yes
modules=1

# From this point onward, adjust the modules settings as you see fit
# They are set to default as no choice
# No choice means that the line in the modules config file will
# not be changed at all

# SourceTV
# 0 = on
# 1 = off
# 2 = No Choice
sourcetv=0

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
# 2 = nosounds
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
# 4 = very_low
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

# Texture Filter
# 0 = anisol6x
# 1 = aniso8x
# 2 = ainso4x
# 3 = trilinear
# 4 = bilinear
# 5 - No Choice
texture_filter=5

# Characters
# 0 = ultra
# 1 = high
# 2 = medium_high
# 3 = medium
# 4 = low
# 5 = very_low
# 6 = No Choice
characters=6

# Decals
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
# 5 = No Choice
decals=5

# Decals Models
# 0 = high
# 1 = low
# 2 = off
# 3 = No Choice
decals_models=3

# Decals Art
# 0 = on
# 1 = off
# 2 = No Choice
decals_art=2

# Sprays
# 0 = on
# 1 = off
# 2 = No Choice
sprays=2

# Gibs
# 0 = high
# 1 = medium
# 2 = medium_low
# 3 = low
# 4 = off
# 5 = No Choice
gibs=5

# Silly Gibs
# 0 = auto
# 1 = on
# 2 = off
# 3 = No Choice
sillygibs=3

# Props
# 0 = ultra
# 1 = high
# 2 = medium
# 3 = low
# 4 = No Choice
props=4

# Ragdolls
# 0 = high
# 1 = medium
# 2 = off
# 3 = hidden
# 4 = No Choice
ragdolls=4

# 3D Sky
# 0 = on
# 1 = off
# 2 = No Choice
threedsky=2 # variable names bad to start with a number

# Jigglebones
# 0 = force_on
# 1 = on
# 2 = off
# 3 = No Choice
jigglebones=3

# Sheens Speed
# 0 = fast
# 1 = medium
# 2 = slow
# 3 = off
# 4 = No Choice
sheens_speed=4

# Sheens Tint
# 0 = full
# 1 = high
# 2 = medium
# 3 = low
# 4 = No Choice
sheens_tint=4

# Textures
# 0 = very_high
# 1 = high
# 2 = medium
# 3 = low
# 4 = very low
# 5 = No Choice
textures=5

# Ropes
# 0 = ultra
# 1 = high
# 2 = low
# 3 = off
# 4 = No Choice
ropes=4

# FPS Cap
# 0 = unlimited Note: Can cause input latency
# 1 = 1000
# 2 = 400
# 3 = 360
# 4 = 300
# 5 = 240
# 6 = 200
# 7 = 180
# 8 = 165
# 9 = 160
# 10 = 144
# 11 = 120
# 12 = 75
# 13 = 60
# 14 = 30
# 15 = powersaver
# 16 = No Choice
fpscap=10

# OpenGL
# 0 = default
# 1 = skip
# 2 = No Choice
opengl=2

# Hud Player Model. I'm leaving on off by 
# default because of the performance impact the 3d model makes 
# 0 = on
# 1 = off
# 2 = No choice
hud_player_model=1

# Hud Panels
# 0 = on
# 1 = off
# 2 = No Choice
hud_panels=2

# Match Hud
# 0 = on
# 1 = off
# 2 = No Choice
match_hud=2

# Messages
# 0 = on
# 1 = hide
# 2 = off
# 3 = No Choice
messages=3

# Killfeed
# 0 = on
# 1 = off
# 2 = No Choice
killfeed=2

# Killstreaks
# 0 = high
# 1 = low
# 2 = off
# 3 = No Choice
killstreaks=3

# Hud Achievement
# 0 = on
# 1 = off
# 2 = No Choice
hud_achievement=2

# Console
# 0 = on
# 1 = off
# 2 = No Chioce
console=2

# Outlines
# 0 = high
# 1 = medium
# 2 = low
# 3 = off
# 4 = No Choice
outlines=4

# Dynamic Background
# 0 = dustbowl
# 1 = itemtest
# 2 = preload
# 3 = off
# 4 = No Choice
dynamic_background=4

# Sound
# 0 = ultra
# 1 = very_high
# 2 = high
# 3 = medium
# 4 = low
# 5 = No Choice
sound=5

# Voice Chat
# 0 = on
# 1 = off
# 2 = No Choice
voice_chat=2

# Mod Support
# 0 = on
# 1 = off
# 2 = No Choice
mod_support=2

# Party Mode
# 0 = open
# 1 = request
# 2 = invite
# 3 = No Choice
party_mode=3

# Logo
# 0 = on
# 1 = off
# 2 = No Chioce
logo=2

# Move Bind
# 0 = wasd
# 1 = esdf
# 2 = zqsd
# 3 = arrows
# 4 = asdf
# 5 = vim
# 6 = No Choice
move_bind=6

source update_backend.sh
