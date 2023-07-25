#Polybar launch
nate already running bar instances
killall -q polybar

# Wait until the processes have been shut down

# Launch polybar
#polybar mybar &
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mybar 2>&1 | tee -a /tmp/polybar1.log & disown
polybar mybar2 2>&1 | tee -a /tmp/polybar2.log & disown


#Restore nitrogen wallpaper
nitrogen --restore

#polybar mybar2

#Possible multiple monitor detection
xrandr --auto

#Initiating picom
picom

#Enabling SSH
#ssh-agent

#Updating the Database for Locate Command
sudo updatedb


