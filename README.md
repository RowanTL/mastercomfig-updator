# Overview

**Please do not run this while TF2 is active**

This is a basic script to update mastercomfig instead of going on the website and manually downloading everything.

I added some options for addons and presets. In the `update.sh` file, you will find various variables for the preset and the addons. Change the integer (either 0 or 1) to whether you want the addon downloaded or not. 0 means no, 1 means yes.

I have only tested this on Arch

Modules support soon

# Dependencies

You are going to need the `github-cli` (`gh`) package to use this.

You are also going to need an SSH key attached to your github account as well.

For arch: `yay -S github-cli`
