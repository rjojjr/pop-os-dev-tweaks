# Dell G16 Notes

## Keyboard Backlight

Sometimes Pop OS kills the keyboard
backlight. To fix it, run `sudo nano /sys/class/leds/dell\:\:kbd_backlight/brightness`
and set the value to `1`.