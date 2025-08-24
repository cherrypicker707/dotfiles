# Power Menu Script for Rofi

function power_off_prompt
{
    sudo shutdown --poweroff
    OPTION=$(printf "power off now\ncancel\n" | rofi -dmenu -p "»" -mesg "system is to be powered off in a minute")

    case $OPTION in
        "power off now")
            sudo shutdown --poweroff now
            ;;
        "cancel")
            sudo shutdown -c
            ;;
    esac
}

function reboot_prompt
{
    shutdown --reboot
    OPTION=$(printf "reboot now\ncancel\n" | rofi -dmenu -p "»" -mesg "system is to be rebooted in a minute")

    case $OPTION in
        "reboot now")
            sudo shutdown --reboot now
            ;;
        "cancel")
            sudo shutdown -c
            ;;
    esac
}

OPTION=$(printf "lock screen\nrestart wm\nlog out\npower off\nreboot\ncancel\n" | rofi -dmenu -p "»")

case $OPTION in
    "lock screen")
        slock
        ;;
    "restart wm")
        i3-msg restart
        ;;
    "log out")
        i3-msg exit
        ;;
    "power off")
        power_off_prompt
        ;;
    "reboot")
        reboot_prompt
        ;;
esac
