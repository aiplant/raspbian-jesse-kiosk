sudo apt-get update && sudo apt-get install upgrade -y
sudo /etc/init.d/ssh restart

sudo raspi-config
In the configuration tool make sure to:

Expand the file system
Disable overscan from Advanced menu. This will help ensure the display fills the entire screen.
Make sure the default option to boot is set to GUI autologin.

Restart.

# auto to append lines to
sudo vi ~/.config/lxsession/LXDE-pi/autostart

@screensaver -no-splash
@xset s off
@xset s noblank
unclutter -idle o
@chromium-browser --noerrdialogs --kiosk --incognito http://192.144.190.210:8010/dashboard/b3dfcd40-d50d-11e8-9c86-19efc0cc9e57?publicId=b5494850-d50d-11e8-9c86-19efc0cc9e57

reboot
