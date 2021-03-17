# we Can echo DBUS_SESSION_BUS_ADDRESS to see its value if this does not work!

battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
if [ $battery_level -le 25 ]
then
echo $battery_level
   env DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus" /usr/bin/notify-send "Battery low" "Battery level is ${battery_level}%!"
fi
