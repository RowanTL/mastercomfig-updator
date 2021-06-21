#!/bin/bash

echo "Going to TF2's custom directory"
cd "$path" || exit

# remove all of the old mastercomfig stuff just incase
echo "Removing any mastercomfig files"
echo "  If an error is thrown, don't worry. It means nothing"
rm mastercomfig-*

# install the proper preset
case "$preset" in
    "0")
        echo "Downloading Ultra preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-ultra-preset.vpk
        echo "Installed Ultra preset";;
    "1")
        echo "Downloading High preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-high-preset.vpk
        echo "Installed High preset";;
    "2")
        echo "Downloading Medium High preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-medium-high-preset.vpk
        echo "Installed Medium High preset";;
    "3")
        echo "Downloading Medium preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-medium-preset.vpk
        echo "Installed Medium preset";;
    "4")
        echo "Downloading Medium Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-medium-low-preset.vpk
        echo "Installed Medium Low preset";;
    "5")
        echo "Downloading Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-low-preset.vpk
        echo "Installed Low preset";;
    "7")
        echo "Downloading None preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-none-preset.vpk
        echo "Installed None preset";;
    *)
        echo "Downloading Very Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-very-low-preset.vpk
        echo "Installed Very Low preset";;
esac

sed -i "718s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" ./*preset.vpk # This shouldn't mess with any dire lines, only empty echo statements
sed -i "719s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" ./*preset.vpk # Also is shameless self plugging in the console output

# Install Null-Cancelling Movement
if [ "$null_movement" -eq 1 ]
then
    echo "Downloading Null-Cancelling Movement addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-null-cancelling-movement-addon.vpk
    echo "Installed Null-Cancelling Movement addon"
fi

# Install Flat Mouse
if [ "$flat_mouse" -eq 1 ]
then
    echo "Downloading Flat Mouse addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-flat-mouse-addon.vpk
    echo "Installed Flat Mouse addon"
fi

# Install No Tutorial
if [ "$no_tutorial" -eq 1 ]
then
    echo "Downloading No Tutorial addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-no-tutorial-addon.vpk
    echo "Installed No Tutorial addon"
fi

# Install Disable Pyroland
if [ "$pyroland" -eq 1 ]
then
    echo "Downloading Disable Pyroland addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-disable-pyroland-addon.vpk
    echo "Installed Disable Pyroland addon"
fi

# Install No Footsteps
if [ "$footsteps" -eq 1 ]
then
    echo "Downloading No Footsteps addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-no-footsteps-addon.vpk
    echo "Installed No Footsteps addon"
fi

# Install No Soundscapes
if [ "$soundscapes" -eq 1 ]
then
    echo "Downloading No Soundscapes addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-no-soundscapes-addon.vpk
    echo "Installed No Soundscapes addon"
fi

# Install Transparent Viewmodel
if [ "$transparent_viewmodel" -eq 1 ]
then
    echo "Downloading Transparent Viewmodel addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-transparent-viewmodels-addon.vpk
    echo "Installed Transparent Viewmodel addon "
fi

# Install Low Memory. RIP if you have too
if [ "$low_mem" -eq 1 ]
then
    echo "Downloading Low Memory addon"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-lowmem-addon.vpk
    echo "Installed Low Memory addon. RIP"
fi

if [ "$modules" -eq 1 ]
then
    echo "Moving to /tf/cfg"
    cd ../cfg || exit
    if [[ -d "./user" ]]
    then
        echo "User folder exists, moving into it"
        cd ./user || exit
        if [[ -f 'modules.cfg' ]]
        then
            echo "Found modules.cfg, deleting it"
            rm modules.cfg
            echo "modules.cfg deleted"
        else
            echo "No modules.cfg found"
        fi
    else
        echo "User folder doesn't exist, creating one"
        mkdir user
        echo "Moving into newly created user folder"
        cd ./user || exit
    fi
    echo "Downloading modules.cfg"
    wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/modules_template.cfg
    mv modules_template.cfg modules.cfg # probably a better way to rename
    echo "modules.cfg downloaded, now customizing it to your preferences"
    echo "  Do not edit modules.cfg during this process!!!"

    case "$sourcetv" in
        "0")
            sed -i "28s/.*/sourcetv=on/" ./modules.cfg;;
        "1")
            sed -i "28s/.*/sourcetv=off/" ./modules.cfg;;
    esac

    case "$packet_rate" in
        "0")
            sed -i "31s/.*/packet_rate=standard/" ./modules.cfg;;
        "1")
            sed -i "31s/.*/packet_rate=congested/" ./modules.cfg;;
    esac

    case "$snapshot_buffer" in
        "0")
            sed -i "34s/.*/snapshot_buffer=auto/" ./modules.cfg;;
        "1")
            sed -i "34s/.*/snapshot_buffer=low/" ./modules.cfg;;
        "2")
            sed -i "34s/.*/snapshot_buffer=safe/" ./modules.cfg;;
        "3")
            sed -i "34s/.*/snapshot_buffer=high/" ./modules.cfg;;
    esac

    case "$packet_size" in
        "0")
            sed -i "37s/.*/packet_size=speed/" ./modules.cfg;;
        "1")
            sed -i "37s/.*/packet_size=saver/" ./modules.cfg;;
        "2")
            sed -i "37s/.*/packet_size=safe/" ./modules.cfg;;
        "3")
            sed -i "37s/.*/packet_size=high/" ./modules.cfg;;
    esac

    case "$bandwith" in
        "0")
            sed -i "40s/.*/bandwidth=8.0Mbps/" ./modules.cfg;;
        "1")
            sed -i "40s/.*/bandwidth=6.0Mbps/" ./modules.cfg;;
        "2")
            sed -i "40s/.*/bandwidth=4.0Mbps/" ./modules.cfg;;
        "3")
            sed -i "40s/.*/bandwidth=3.0Mbps/" ./modules.cfg;;
        "4")
            sed -i "40s/.*/bandwidth=2.5Mbps/" ./modules.cfg;;
        "5")
            sed -i "40s/.*/bandwidth=2.0Mbps/" ./modules.cfg;;
        "6")
            sed -i "40s/.*/bandwidth=1.5Mbps/" ./modules.cfg;;
        "7")
            sed -i "40s/.*/bandwidth=1.0Mbps/" ./modules.cfg;;
        "8")
            sed -i "40s/.*/bandwidth=762Kbps/" ./modules.cfg;;
        "9")
            sed -i "40s/.*/bandwidth=512Kbps/" ./modules.cfg;;
        "10")
            sed -i "40s/.*/bandwidth=384Kbps/" ./modules.cfg;;
        "11")
            sed -i "40s/.*/bandwidth=192Kbps/" ./modules.cfg;;
        "12")
            sed -i "40s/.*/bandwidth=128Kbps/" ./modules.cfg;;
    esac

    case "$download" in
        "0")
            sed -i "43s/.*/download=auto/" ./modules.cfg;;
        "1")
            sed -i "43s/.*/download=all/" ./modules.cfg;;
        "2")
            sed -i "43s/.*/download=nosounds/" ./modules.cfg;;
        "3")
            sed -i "43s/.*/download=mapsonly/" ./modules.cfg;;
        "4")
            sed -i "43s/.*/download=none/" ./modules.cfg;;
    esac
fi
