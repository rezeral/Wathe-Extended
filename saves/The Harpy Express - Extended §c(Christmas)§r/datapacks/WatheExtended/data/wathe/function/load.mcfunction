# Wathe Extended Datapack
# Author: @rezeral
# License: GPL-3.0 License
# Version: beta-2.5.130

# Objectives initialization
# : Do not edit or delete these lines unless you know what you are doing
## Player counter related objectives
scoreboard objectives add wathe_playercount dummy {"text":"Players Counter","color":"yellow"}
scoreboard objectives add wathe_playercount_cache dummy {"text":"(Cache) Players Counter","color":"yellow"}
## Ready state related objectives
scoreboard objectives add wathe_ready dummy {"text":"Ready State","color":"dark_green"}
scoreboard objectives add wathe_ready_cache dummy {"text":"(Cache) Ready State","color":"dark_green"}
## Timer related objectives
scoreboard objectives add wathe_timer dummy {"text":"Timer","color":"aqua"}
scoreboard objectives add wathe_timer_cache dummy {"text":"(Cache) Timer","color":"aqua"}
## Timer Lock related objectives
scoreboard objectives add wathe_lock_timer dummy {"text":"Timer Lock","color":"dark_purple"}
scoreboard objectives add wathe_lock_timer_cache dummy {"text":"(Cache) Timer Lock","color":"dark_purple"}
scoreboard objectives add wathe_lock_timer_timer dummy {"text":"Timer Lock Cooldown","color":"dark_purple"}
## Debug related objectives
scoreboard objectives add wathe_debug dummy {"text":"Debug","color":"red"}
scoreboard objectives add wathe_debug_ui dummy {"text":"WatheExt Debug","color":"white"}
## Interaction Handler related objectives
scoreboard objectives add wathe_handler minecraft.used:minecraft.carrot_on_a_stick {"text":"Interaction Handler","color":"dark_red"}
scoreboard objectives add wathe_handler_cache dummy {"text":"(Cache) Interaction Handler","color":"dark_red"}
## RTP Player Assignment related objectives
scoreboard objectives add wathe_assigned dummy {"text":"Assigned Flag","color":"gold"}
scoreboard objectives add wathe_assigned_slot dummy {"text":"Assigned Slot","color":"gold"}
scoreboard objectives add wathe_rand dummy {"text":"Randomizer","color":"aqua"}
scoreboard objectives add wathe_attempts dummy {"text":"Assignment Attempts","color":"red"}
## YAWP State related objectives
scoreboard objectives add wathe_yawp dummy {"text":"YAWP State","color":"light_purple"}

# Annonce load complete
tellraw @a [{"text":"[Wathe] ","color":"blue"},{"text":"Datapack enabled!","color":"green"}]
