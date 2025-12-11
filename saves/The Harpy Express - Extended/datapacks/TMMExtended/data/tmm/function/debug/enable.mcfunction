# Enable debug
scoreboard players set debug tmm_debug 1

# Set debug sidebar display
scoreboard objectives setdisplay sidebar tmm_debug_ui

# Notify that debug has been enabled
title @a actionbar {"text":"Debug mode enabled","color":"green"}
