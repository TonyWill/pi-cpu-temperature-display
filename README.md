# temperature-display
Show raspberry pi running CPU temperature on tm1637 display at startup

## Installation

1. [Connect to your Raspberry Pi via SSH](https://howchoo.com/g/mgi3mdnlnjq/how-to-log-in-to-a-raspberry-pi-via-ssh)
1. Clone this repo: `git clone https://github.com/TonyWill/temperature-display`
1. Run the setup script: `./temperature-display/script/install`

## Uninstallation

If you need to uninstall the power button script in order to use GPIO3 for another project or something:

1. Run the uninstall script: `./temperature-display/script/uninstall`

## Global requirements

In order for this code to run at startup which would make root the owner, its dependencies must be installed system-wide using: 
````shell
sudo pip3 install raspberrypi-tm1637
````
instead of just 'pip3 install' which would do a local user installation.

## Hardware
The default connections used for the TM1637 display are:
````
GND - pin 6
VCC - pin 12 GPIO 18
SCL - pin 8 GPIO 14
SDA - pin 10 GPIO 15
````
But none of these pins are mandatory so you can refer to the [raspberry pi pins](https://pinout.xyz/) if you wish to change them.

### TM1637 Display

Find out more about this display [right here](https://github.com/depklyon/raspberrypi-tm1637).