# pi-cpu-temperature-display
Show raspberry pi running CPU temperature on tm1637 display at startup

## Installation

1. [Connect to your Raspberry Pi via SSH](https://howchoo.com/g/mgi3mdnlnjq/how-to-log-in-to-a-raspberry-pi-via-ssh)
1. Clone this repo: `git clone https://github.com/TonyWill/pi-cpu-temperature-display`
1. Run the setup script: `./pi-cpu-temperature-display/script/install`

## Uninstallation

If you need to uninstall the temperature display script in order to use the GPIOs for another project or something:

1. Run the uninstall script: `./pi-cpu-temperature-display/script/uninstall`

## Global requirements

In order for this code to run at startup which would make root the owner, its dependencies must be installed system-wide using: 
````shell
sudo apt install python3-gpiozero
sudo pip3 install raspberrypi-tm1637
````
instead of just 'pip3 install' which would do a local user installation.

## Hardware
The default connections used for the TM1637 display are:
````
GND - pin 39
VCC - pin 33 GPIO 13
SCL - pin 35 GPIO 19
SDA - pin 37 GPIO 26
````
But none of these pins are mandatory so you can refer to the [raspberry pi pins](https://pinout.xyz/) if you wish to change them.

### TM1637 Display

Find out more about this display [right here](https://github.com/depklyon/raspberrypi-tm1637).