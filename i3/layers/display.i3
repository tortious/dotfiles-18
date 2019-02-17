# borders is displayed here, just invisible for some reason
for_window [class="^.*"] border pixel 2
# default_border pixel 2
# Don't show borders when there is only one container
smart_borders on

# Colors
# class                 border  backgr. text    indicator child_border
client.focused          $base00 $base00 $base05 $base0B   $base05
client.focused_inactive $base0D $base0D $base00 $base04   $base04
client.unfocused        $base01 $base01 $base04 $base00   $base00
client.urgent           $base0F $base0F $base00 $base0F   $base0F
client.placeholder      #000000 $base00 $base05 #000000   $base00

client.background       $base00

# Set gaps
# gaps inner 10
# gaps outer 0
# gaps top 37
# Set background

# Set wallpaper
exec --no-startup-id ~/.fehbg

# Set font
font pango:Noto Sans 8

# Start up compton compositor
exec --no-startup-id compton -b

# Unclutter removes the mouse cursor after it hasn't been used for awhile.
exec --no-startup-id unclutter &

# eDP1 is the built-in display
# HDMI2 is the dedicated HDMI port
# TODO make it so it handles single monitor setup (udev?)
# exec --no-startup-id "xrandr --output eDP1 --primary --pos 0x0"
# exec --no-startup-id "xrandr --output HDMI2 --pos 1920x-310"

# Startup polybar
exec_always --no-startup-id $HOME/.config/polybar/launch.sh