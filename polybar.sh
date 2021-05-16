# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bar1 and bar2
polybar example &
echo "Bars launched..."
killall -q compton
compton -c -r 4 -l -4 -t -4 -G -f -b
#compton -f
#feh --bg-scale ~root/wall/213493.png 
#xrdb ~/.Xresources
#wal -i ~/.wallpapers/wolf.jpg
