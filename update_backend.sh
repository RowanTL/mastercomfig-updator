#!/bin/bash

# rm mastercomfig-*
# gh release download --pattern '*.vpk' --repo https://github.com/mastercomfig/mastercomfig.git

# Go to custom directory
cd "$path"

# remove all of the old mastercomfig stuff just incase
# if there is no mastercomfig stuff in there, an error
# will be thrown but it makes no difference
rm mastercomfig-*
rm readme.txt

# install the proper preset
if [ $preset -eq 1 ]
then
    gh release download --pattern 'mastercomfig-ultra-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
elif [ $preset -eq 2 ]
then
    gh release download --pattern 'mastercomfig-high-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
elif [ $preset -eq 3 ]
then
    gh release download --pattern 'mastercomfig-medium-high-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
elif [ $preset -eq 4 ]
then
    gh release download --pattern 'mastercomfig-medium-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
elif [ $preset -eq 5 ]
then
    gh release download --pattern 'mastercomfig-medium-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
elif [ $preset -eq 6 ]
then
    gh release download --pattern 'mastercomfig-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
else
    gh release download --pattern 'mastercomfig-very-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install Null-Cancelling Movement
if [ $null_movement -eq 1 ]
then
    gh release download --pattern 'mastercomfig-null-cancelling-movement-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install Flat Mouse
if [ $flat_mouse -eq 1 ]
then
    gh release download --pattern 'mastercomfig-flat-mouse-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install No Tutorial
if [ $no_tutorial -eq 1 ]
then
    gh release download --pattern 'mastercomfig-no-tutorial-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install Disable Pyroland
if [ $pyroland -eq 1 ]
then
    gh release download --pattern 'mastercomfig-disable-pyroland-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install No Footsteps
if [ $footsteps -eq 1 ]
then
    gh release download --pattern 'mastercomfig-no-footsteps-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install No Soundscapes
if [ $soundscapes -eq 1 ]
then
    gh release download --pattern 'mastercomfig-no-soundscapes-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install Transparent Viewmodel
if [ $transparent_viewmodel -eq 1 ]
then
    gh release download --pattern 'mastercomfig-transparent-viewmodels-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi

# Install Low Memory. RIP if you have too
if [ $low_mem -eq 1 ]
then
    gh release download --pattern 'mastercomfig-lowmem-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
fi