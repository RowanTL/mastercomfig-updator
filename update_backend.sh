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
    "5")
        echo "Downloading Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-low-preset.vpk
        echo "Installed Low preset";;
    "6")
        echo "Downloading Very Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-very-low-preset.vpk
        echo "Installed Very Low preset";;
    "7")
        echo "Downloading None preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-none-preset.vpk
        echo "Installed None preset";;
    *)
        echo "Downloading Medium Low preset"
        wget https://github.com/mastercomfig/mastercomfig/releases/latest/download/mastercomfig-medium-low-preset.vpk
        echo "Installed Medium Low preset";;
esac

sed -i "703s/.*/echo\"  Updated by Skrublaub's mastercomfig updator\"/" ./*preset.vpk # This shouldn't mess with any dire lines, only empty echo statements
sed -i "704s/.*/echo\"  https:\/\/github.com\/Skrublaub\/mastercomfig-updator\"/" ./*preset.vpk # Also is shameless self plugging in the console output

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

    case "$lod" in
        "0")
            sed -i "50s/.*/lod=ultra/" ./modules.cfg;;
        "1")
            sed -i "50s/.*/lod=high/" ./modules.cfg;;
        "2")
            sed -i "50s/.*/lod=medium/" ./modules.cfg;;
        "3")
            sed -i "50s/.*/lod=low/" ./modules.cfg;;
    esac

    case "$lighting" in
        "0")
            sed -i "53s/.*/lighting=ultra/" ./modules.cfg;;
        "1")
            sed -i "53s/.*/lighting=very_high/" ./modules.cfg;;
        "2")
            sed -i "53s/.*/lighting=high/" ./modules.cfg;;
        "3")
            sed -i "53s/.*/lighting=medium_high/" ./modules.cfg;;
        "4")
            sed -i "53s/.*/lighting=medium/" ./modules.cfg;;
        "5")
            sed -i "53s/.*/lighting=low/" ./modules.cfg;;
        "6")
            sed -i "53s/.*/lighting=very_low/" ./modules.cfg;;
    esac

    case "$lighting_ex" in
        "0")
            sed -i "56s/.*/lighting_ex=high/" ./modules.cfg;;
        "1")
            sed -i "56s/.*/lighting_ex=low/" ./modules.cfg;;
    esac

    case "$shadows" in
        "0")
            sed -i "59s/.*/shadows=ultra/" ./modules.cfg;;
        "1")
            sed -i "59s/.*/shadows=very_high/" ./modules.cfg;;
        "2")
            sed -i "59s/.*/shadows=high/" ./modules.cfg;;
        "3")
            sed -i "59s/.*/shadows=medium_high/" ./modules.cfg;;
        "4")
            sed -i "59s/.*/shadows=medium/" ./modules.cfg;;
        "5")
            sed -i "59s/.*/shadows=low/" ./modules.cfg;;
        "6")
            sed -i "59s/.*/shadows=very_low/" ./modules.cfg;;
    esac

    case "$effects" in
        "0")
            sed -i "62s/.*/effects=ultra/" ./modules.cfg;;
        "1")
            sed -i "62s/.*/effects=very_high/" ./modules.cfg;;
        "2")
            sed -i "62s/.*/effects=high/" ./modules.cfg;;
        "3")
            sed -i "62s/.*/effects=medium_high/" ./modules.cfg;;
        "4")
            sed -i "62s/.*/effects=medium/" ./modules.cfg;;
        "5")
            sed -i "62s/.*/effects=low/" ./modules.cfg;;
        "6")
            sed -i "62s/.*/effects=very_low/" ./modules.cfg;;
    esac

    case "$water" in
        "0")
            sed -i "65s/.*/water=ultra/" ./modules.cfg;;
        "1")
            sed -i "65s/.*/water=very_high/" ./modules.cfg;;
        "2")
            sed -i "65s/.*/water=high/" ./modules.cfg;;
        "3")
            sed -i "65s/.*/water=medium_high/" ./modules.cfg;;
        "4")
            sed -i "65s/.*/water=medium/" ./modules.cfg;;
        "5")
            sed -i "65s/.*/water=low/" ./modules.cfg;;
        "6")
            sed -i "65s/.*/water=very_low/" ./modules.cfg;;
    esac

    case "$particles" in
        "0")
            sed -i "68s/.*/particles=ultra/" ./modules.cfg;;
        "1")
            sed -i "68s/.*/particles=high/" ./modules.cfg;;
        "2")
            sed -i "68s/.*/particles=medium/" ./modules.cfg;;
        "3")
            sed -i "68s/.*/particles=low/" ./modules.cfg;;
        "4")
            sed -i "68s/.*/particles=very_low/" ./modules.cfg;;
    esac

    case "$post_processing" in
        "0")
            sed -i "71s/.*/post_processing=high/" ./modules.cfg;;
        "1")
            sed -i "71s/.*/post_processing=medium/" ./modules.cfg;;
        "2")
            sed -i "71s/.*/post_processing=low/" ./modules.cfg;;
        "3")
            sed -i "71s/.*/post_processing=off/" ./modules.cfg;;
    esac

    case "$pyrovision" in
        "0")
            sed -i "74s/.*/pyrovision=high/" ./modules.cfg;;
        "1")
            sed -i "74s/.*/pyrovision=medium/" ./modules.cfg;;
        "2")
            sed -i "74s/.*/pyrovision=low/" ./modules.cfg;;
    esac

    case "$motion_blur" in
        "0")
            sed -i "77s/.*/motion_blur=high/" ./modules.cfg;;
        "1")
            sed -i "77s/.*/motion_blur=low/" ./modules.cfg;;
        "2")
            sed -i "77s/.*/motion_blur=off/" ./modules.cfg;;
    esac

    case "$anti_aliasing" in
        "0")
            sed -i "80s/.*/anti_aliasing=msaa_8x/" ./modules.cfg;;
        "1")
            sed -i "80s/.*/anti_aliasing=msaa_4x/" ./modules.cfg;;
        "2")
            sed -i "80s/.*/anti_aliasing=msaa_2x/" ./modules.cfg;;
        "3")
            sed -i "80s/.*/anti_aliasing=off/" ./modules.cfg;;
    esac

    case "$texture_filter" in
        "0")
            sed -i "83s/.*/texture_filter=aniso16x/" ./modules.cfg;;
        "1")
            sed -i "83s/.*/texture_filter=aniso8x/" ./modules.cfg;;
        "2")
            sed -i "83s/.*/texture_filter=aniso4x/" ./modules.cfg;;
        "3")
            sed -i "83s/.*/texture_filter=trilinear/" ./modules.cfg;;
        "4")
            sed -i "83s/.*/texture_filter=bilinear/" ./modules.cfg;;
    esac

    case "$characters" in
        "0")
            sed -i "86s/.*/characters=ultra/" ./modules.cfg;;
        "1")
            sed -i "86s/.*/characters=high/" ./modules.cfg;;
        "2")
            sed -i "86s/.*/characters=medium_high/" ./modules.cfg;;
        "3")
            sed -i "86s/.*/characters=medium/" ./modules.cfg;;
        "4")
            sed -i "86s/.*/characters=low/" ./modules.cfg;;
        "5")
            sed -i "86s/.*/characters=very_low/" ./modules.cfg;;
    esac

    case "$decals" in
        "0")
            sed -i "89s/.*/decals=ultra/" ./modules.cfg;;
        "1")
            sed -i "89s/.*/decals=high/" ./modules.cfg;;
        "2")
            sed -i "89s/.*/decals=medium/" ./modules.cfg;;
        "3")
            sed -i "89s/.*/decals=low/" ./modules.cfg;;
    esac

    case "$decals_models" in
        "0")
            sed -i "92s/.*/decals_models=high/" ./modules.cfg;;
        "1")
            sed -i "92s/.*/decals_models=low/" ./modules.cfg;;
        "2")
            sed -i "92s/.*/decals_models=off/" ./modules.cfg;;
    esac

    case "$decals_art" in
        "0")
            sed -i "95s/.*/decals_art=on/" ./modules.cfg;;
        "1")
            sed -i "95s/.*/decals_art=off/" ./modules.cfg;;
    esac

    case "$sprays" in
        "0")
            sed -i "98s/.*/sprays=on/" ./modules.cfg;;
        "1")
            sed -i "98s/.*/sprays=off/" ./modules.cfg;;
    esac

    case "$gibs" in
        "0")
            sed -i "101s/.*/gibs=high/" ./modules.cfg;;
        "1")
            sed -i "101s/.*/gibs=medium/" ./modules.cfg;;
        "2")
            sed -i "101s/.*/gibs=medium_low/" ./modules.cfg;;
        "3")
            sed -i "101s/.*/gibs=low/" ./modules.cfg;;
        "4")
            sed -i "101s/.*/gibs=off/" ./modules.cfg;;
    esac

    case "$sillygibs" in
        "0")
            sed -i "104s/.*/sillygibs=auto/" ./modules.cfg;;
        "1")
            sed -i "104s/.*/sillygibs=on/" ./modules.cfg;;
        "2")
            sed -i "104s/.*/sillygibs=off/" ./modules.cfg;;
    esac

    case "$props" in
        "0")
            sed -i "107s/.*/props=ultra/" ./modules.cfg;;
        "1")
            sed -i "107s/.*/props=high/" ./modules.cfg;;
        "2")
            sed -i "107s/.*/props=medium/" ./modules.cfg;;
        "3")
            sed -i "107s/.*/props=low/" ./modules.cfg;;
    esac

    case "$ragdolls" in
        "0")
            sed -i "110s/.*/ragdolls=high/" ./modules.cfg;;
        "1")
            sed -i "110s/.*/ragdolls=medium/" ./modules.cfg;;
        "2")
            sed -i "110s/.*/ragdolls=off/" ./modules.cfg;;
        "3")
            sed -i "110s/.*/ragdolls=hidden/" ./modules.cfg;;
    esac

    case "$threedsky" in
        "0")
            sed -i "113s/.*/3dsky=on/" ./modules.cfg;;
        "1")
            sed -i "113s/.*/3dsky=off/" ./modules.cfg;;
    esac

    case "$jigglebones" in
        "0")
            sed -i "116s/.*/jigglebones=force_on/" ./modules.cfg;;
        "1")
            sed -i "116s/.*/jigglebones=on/" ./modules.cfg;;
        "2")
            sed -i "116s/.*/jigglebones=off/" ./modules.cfg;;
    esac

    case "$sheens_speed" in
        "0")
            sed -i "119s/.*/sheens_speed=fast/" ./modules.cfg;;
        "1")
            sed -i "119s/.*/sheens_speed=medium/" ./modules.cfg;;
        "2")
            sed -i "119s/.*/sheens_speed=slow/" ./modules.cfg;;
        "3")
            sed -i "119s/.*/sheens_speed=off/" ./modules.cfg;;
    esac

    case "$sheens_tint" in
        "0")
            sed -i "122s/.*/sheens_tint=full/" ./modules.cfg;;
        "1")
            sed -i "122s/.*/sheens_tint=high/" ./modules.cfg;;
        "2")
            sed -i "122s/.*/sheens_tint=slow/" ./modules.cfg;;
        "3")
            sed -i "122s/.*/sheens_tint=off/" ./modules.cfg;;
    esac

    case "$textures" in
        "0")
            sed -i "125s/.*/textures=very_high/" ./modules.cfg;;
        "1")
            sed -i "125s/.*/textures=high/" ./modules.cfg;;
        "2")
            sed -i "125s/.*/textures=medium/" ./modules.cfg;;
        "3")
            sed -i "125s/.*/textures=low/" ./modules.cfg;;
        "4")
            sed -i "125s/.*/textures=very_low/" ./modules.cfg;;
    esac

    case "$ropes" in
        "0")
            sed -i "128s/.*/ropes=ultra/" ./modules.cfg;;
        "1")
            sed -i "128s/.*/ropes=high/" ./modules.cfg;;
        "2")
            sed -i "128s/.*/ropes=low/" ./modules.cfg;;
        "3")
            sed -i "128s/.*/ropes=off/" ./modules.cfg;;
    esac

    case "$fpscap" in
        "0")
            sed -i "131s/.*/fpscap=unlimited/" ./modules.cfg;;
        "1")
            sed -i "131s/.*/fpscap=1000/" ./modules.cfg;;
        "2")
            sed -i "131s/.*/fpscap=400/" ./modules.cfg;;
        "3")
            sed -i "131s/.*/fpscap=360/" ./modules.cfg;;
        "4")
            sed -i "131s/.*/fpscap=300/" ./modules.cfg;;
        "5")
            sed -i "131s/.*/fpscap=240/" ./modules.cfg;;
        "6")
            sed -i "131s/.*/fpscap=200/" ./modules.cfg;;
        "7")
            sed -i "131s/.*/fpscap=180/" ./modules.cfg;;
        "8")
            sed -i "131s/.*/fpscap=165/" ./modules.cfg;;
        "9")
            sed -i "131s/.*/fpscap=160/" ./modules.cfg;;
        "10")
            sed -i "131s/.*/fpscap=144/" ./modules.cfg;;
        "11")
            sed -i "131s/.*/fpscap=120/" ./modules.cfg;;
        "12")
            sed -i "131s/.*/fpscap=75/" ./modules.cfg;;
        "13")
            sed -i "131s/.*/fpscap=60/" ./modules.cfg;;
        "14")
            sed -i "131s/.*/fpscap=30/" ./modules.cfg;;
        "15")
            sed -i "131s/.*/fpscap=powersaver/" ./modules.cfg;;
    esac

    case "$opengl" in
        "0")
            sed -i "134s/.*/opengl=default/" ./modules.cfg;;
        "1")
            sed -i "134s/.*/opengl=skip/" ./modules.cfg;;
    esac

    case "$hud_player_model" in
        "0")
            sed -i "141s/.*/hud_player_model=on/" ./modules.cfg;;
        "1")
            sed -i "141s/.*/hud_player_model=off/" ./modules.cfg;;
    esac

    case "$hud_panels" in
        "0")
            sed -i "144s/.*/hud_panels=on/" ./modules.cfg;;
        "1")
            sed -i "144s/.*/hud_panels=off/" ./modules.cfg;;
    esac

    case "$match_hud" in
        "0")
            sed -i "147s/.*/match_hud=on/" ./modules.cfg;;
        "1")
            sed -i "147s/.*/match_hud=off/" ./modules.cfg;;
    esac

    case "$messages" in
        "0")
            sed -i "150s/.*/messages=on/" ./modules.cfg;;
        "1")
            sed -i "150s/.*/messages=hide/" ./modules.cfg;;
        "2")
            sed -i "150s/.*/messages=off/" ./modules.cfg;;
    esac

    case "$killfeed" in
        "0")
            sed -i "153s/.*/killfeed=on/" ./modules.cfg;;
        "1")
            sed -i "153s/.*/killfeed=off/" ./modules.cfg;;
    esac

    case "$killstraks" in
        "0")
            sed -i "156s/.*/killstreaks=high/" ./modules.cfg;;
        "1")
            sed -i "156s/.*/killstreaks=low/" ./modules.cfg;;
        "2")
            sed -i "156s/.*/killstreaks=off/" ./modules.cfg;;
    esac

    case "$hud_achievement" in
        "0")
            sed -i "159s/.*/hud_achievement=on/" ./modules.cfg;;
        "1")
            sed -i "159s/.*/hud_achievement=off/" ./modules.cfg;;
    esac

    case "$console" in
        "0")
            sed -i "162s/.*/console=on/" ./modules.cfg;;
        "1")
            sed -i "162s/.*/console=off/" ./modules.cfg;;
    esac

    case "$outlines" in
        "0")
            sed -i "165s/.*/outlines=high/" ./modules.cfg;;
        "1")
            sed -i "165s/.*/outlines=medium/" ./modules.cfg;;
        "2")
            sed -i "165s/.*/outlines=low/" ./modules.cfg;;
        "3")
            sed -i "165s/.*/outlines=off/" ./modules.cfg;;
    esac

    case "$dynamic_background" in
        "0")
            sed -i "168s/.*/dynamic_background=dustbowl/" ./modules.cfg;;
        "1")
            sed -i "168s/.*/dynamic_background=itemtest/" ./modules.cfg;;
        "2")
            sed -i "168s/.*/dynamic_background=preload/" ./modules.cfg;;
        "3")
            sed -i "168s/.*/dynamic_background=off/" ./modules.cfg;;
    esac

    case "$sound" in
        "0")
            sed -i "175s/.*/sound=ultra/" ./modules.cfg;;
        "1")
            sed -i "175s/.*/sound=very_high/" ./modules.cfg;;
        "2")
            sed -i "175s/.*/sound=high/" ./modules.cfg;;
        "3")
            sed -i "175s/.*/sound=medium/" ./modules.cfg;;
        "4")
            sed -i "175s/.*/sound=low/" ./modules.cfg;;
    esac

    case "$voice_chat" in
        "0")
            sed -i "178s/.*/voice_chat=on/" ./modules.cfg;;
        "1")
            sed -i "178s/.*/voice_chat=off/" ./modules.cfg;;
    esac

    case "$mod_support" in
        "0")
            sed -i "185s/.*/mod_support=on/" ./modules.cfg;;
        "1")
            sed -i "185s/.*/mod_support=off/" ./modules.cfg;;
    esac

    case "$party_mode" in
        "0")
            sed -i "188s/.*/party_mode=open/" ./modules.cfg;;
        "1")
            sed -i "188s/.*/party_mode=request/" ./modules.cfg;;
        "2")
            sed -i "188s/.*/party_mode=invite/" ./modules.cfg;;
    esac

    case "$logo" in
        "0")
            sed -i "191s/.*/logo=on/" ./modules.cfg;;
        "1")
            sed -i "191s/.*/logo=off/" ./modules.cfg;;
    esac

    case "$move_bind" in
        "0")
            sed -i "194s/.*/move_bind=wasd/" ./modules.cfg;;
        "1")
            sed -i "194s/.*/move_bind=esdf/" ./modules.cfg;;
        "2")
            sed -i "194s/.*/move_bind=zqsd/" ./modules.cfg;;
        "3")
            sed -i "194s/.*/move_bind=arrows/" ./modules.cfg;;
        "4")
            sed -i "194s/.*/move_bind=asdf/" ./modules.cfg;;
        "5")
            sed -i "194s/.*/move_bind=vim/" ./modules.cfg;;
    esac

    echo "Modules complete!"
fi
