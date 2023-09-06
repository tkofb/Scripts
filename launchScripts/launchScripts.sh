#Polybar launch
nate already running bar instances
killall -q polybar

# Wait until the processes have been shut down

# Launch polybar
#polybar mybar &
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown
polybar mybar2 2>&1 | tee -a /tmp/polybar2.log & disown

#polybar mybar2

#Possible multiple monitor detection
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 1600x0 --rotate normal --output HDMI-1 --off --output DP-1 --mode 1600x900 --pos 0x90 --rotate normal --output DP-2 --off --output HDMI-1-2 --off

#Restore nitrogen wallpaper
nitrogen --restore

#Initiating picom
picom

#Enabling SSH
ssh-agent

#Updating the Database for Locate Command
sudo updatedb


