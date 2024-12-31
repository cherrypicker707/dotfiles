function poweroff_prompt
    sudo shutdown --poweroff
    set OPTION $(printf "power off now\ncancel\n" | rofi -dmenu -p "> " -mesg "system is to be powered off in a minute")

    switch $OPTION
        case "power off now"
            sudo shutdown --poweroff now
        case "cancel"
            sudo shutdown -c
    end
end

function reboot_prompt
    shutdown --reboot
    set OPTION $(printf "reboot now\ncancel\n" | rofi -dmenu -p "> " -mesg "system is to be rebooted in a minute")

    switch $OPTION
        case "reboot now"
            sudo shutdown --reboot now
        case "cancel"
            sudo shutdown -c
    end
end

set OPTION $(printf "lock screen\nrestart wm\nlog out\npower off\nreboot\ncancel\n" | rofi -dmenu -p "> ")

switch $OPTION
    case "lock screen"
        slock
    case "restart wm"
        i3-msg restart
    case "log out"
        i3-msg exit
    case "power off"
        power_off_prompt
    case "reboot"
        reboot_prompt
end
