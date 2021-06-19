#!/bin/bash

echo "Going to TF2's custom directory"
cd "$path"

# remove all of the old mastercomfig stuff just incase
# if there is no mastercomfig stuff in there, an error
# will be thrown but it makes no difference
echo "Deleting old mastercomfig"
echo "  If there is an error, do not worry."

# TODO: check for files named mastercomfig-*
rm mastercomfig-*

# install the proper preset
if [ $preset -eq 1 ]
then
    echo "Downloading Ultra preset"
    gh release download --pattern 'mastercomfig-ultra-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-* # This shouldn't mess with any dire lines, only empty echo statements
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-* # Also is shameless self plugging in the console output
    echo "Installed Ultra preset"
elif [ $preset -eq 2 ]
then
    echo "Downloading High preset"
    gh release download --pattern 'mastercomfig-high-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed High preset"
elif [ $preset -eq 3 ]
then
    echo "Downloading Medium High preset"
    gh release download --pattern 'mastercomfig-medium-high-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed Medium High preset"
elif [ $preset -eq 4 ]
then
    echo "Downloading Medium preset"
    gh release download --pattern 'mastercomfig-medium-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed Medium preset"
elif [ $preset -eq 5 ]
then
    echo "Downloading Medium Low preset"
    gh release download --pattern 'mastercomfig-medium-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed Medium Low preset"
elif [ $preset -eq 6 ]
then
    echo "Downloading Low preset"
    gh release download --pattern 'mastercomfig-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed Low preset"
elif [ $preset -eq 8 ]
then
    echo "Downloading None preset"
    gh release download --pattern 'mastercomfig-none-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed None preset"
else
    echo "Downloading Very Low preset"
    gh release download --pattern 'mastercomfig-very-low-preset.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" mastercomfig-*
    sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" mastercomfig-*
    echo "Installed Very Low preset"
fi

# Install Null-Cancelling Movement
if [ $null_movement -eq 1 ]
then
    echo "Downloading Null-Cancelling Movement addon"
    gh release download --pattern 'mastercomfig-null-cancelling-movement-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed Null-Cancelling Movement addon"
fi

# Install Flat Mouse
if [ $flat_mouse -eq 1 ]
then
    echo "Downloading Flat Mouse addon"
    gh release download --pattern 'mastercomfig-flat-mouse-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed Flat Mouse addon"
fi

# Install No Tutorial
if [ $no_tutorial -eq 1 ]
then
    echo "Downloading No Tutorial addon"
    gh release download --pattern 'mastercomfig-no-tutorial-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed No Tutorial addon"
fi

# Install Disable Pyroland
if [ $pyroland -eq 1 ]
then
    echo "Downloading Disable Pyroland addon"
    gh release download --pattern 'mastercomfig-disable-pyroland-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed Disable Pyroland addon"
fi

# Install No Footsteps
if [ $footsteps -eq 1 ]
then
    echo "Downloading No Footsteps addon"
    gh release download --pattern 'mastercomfig-no-footsteps-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed No Footsteps addon"
fi

# Install No Soundscapes
if [ $soundscapes -eq 1 ]
then
    echo "Downloading No Soundscapes addon"
    gh release download --pattern 'mastercomfig-no-soundscapes-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed No Soundscapes addon"
fi

# Install Transparent Viewmodel
if [ $transparent_viewmodel -eq 1 ]
then
    echo "Downloading Transparent Viewmodel addon"
    gh release download --pattern 'mastercomfig-transparent-viewmodels-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed Transparent Viewmodel addon "
fi

# Install Low Memory. RIP if you have too
if [ $low_mem -eq 1 ]
then
    echo "Downloading Low Memory addon"
    gh release download --pattern 'mastercomfig-lowmem-addon.vpk' --repo https://github.com/mastercomfig/mastercomfig.git
    echo "Installed Low Memory addon. RIP"
fi

if [ $modules -eq 1 ]
then
    echo "Moving to /tf/cfg"
    cd ../cfg
    pwd
    if [[ -d "./user" ]]
    then
        echo "User folder exists, moving into it"
        cd ./user
        if [[ -f 'modules.cfg' ]]
        then
            echo "Found modules.cfg, deleting it"
            rm modules_template.cfg
            echo "modules.cfg deleted"
        else
            echo "No modules.cfg found"
        fi
    else
        echo "User folder doesn't exist, creating one"
        mkdir user
        echo "Moving into newly created user folder"
        cd ./user
    fi
    echo "Downloading modules.cfg"
    gh release download --pattern 'modules_template.cfg' --repo https://github.com/mastercomfig/mastercomfig.git
    mv modules_template.cfg modules.cfg # probably a better way to rename
    echo "modules.cfg downloaded, now customizing it to your preferences"
    echo "  Do not edit modules.cfg during this process!!!"

    
fi
