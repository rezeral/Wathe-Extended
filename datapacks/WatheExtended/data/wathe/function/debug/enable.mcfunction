# Enable debug
scoreboard players set debug wathe_debug 1

# Set debug sidebar display
scoreboard objectives setdisplay sidebar wathe_debug_ui

# Tellraw about world protection toggle command
execute if score yawp wathe_yawp matches 1 run tellraw @a [{"text":"[Wathe] ","color":"blue"},{"text":"World Protection is currently enabled. If you wish to disable World Protection, run ","color":"green","extra": [{"text":"this command.","color":"dark_green","clickEvent":{"action":"run_command","value":"/function wathe:debug/yawp/disable"},"underlined": true}]}]
execute unless score yawp wathe_yawp matches 1 run tellraw @a [{"text":"[Wathe] ","color":"blue"},{"text":"World Protection is currently disabled. If you wish to enable World Protection, run ","color":"red","extra": [{"text":"this command.","color":"dark_red","clickEvent":{"action":"run_command","value":"/function wathe:debug/yawp/enable"},"underlined": true}]}]

# Show/hide interaction safeguards boundaries
execute if score yawp wathe_yawp matches 1 run yawp show near 500 Frame
execute unless score yawp wathe_yawp matches 1 run yawp hide all

# Notify that debug has been enabled
title @a actionbar {"text":"Debug mode enabled","color":"green"}
