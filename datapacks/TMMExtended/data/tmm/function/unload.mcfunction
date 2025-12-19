# Clears every stored data and scoreboard objectives created by the TMM datapack
# Useful when testing and making modifications to the datapack
# Instead of using /datapack disable, just run this function

# Clear stored train positions from storage
data remove storage tmm:trainpos pos

# Remove all scoreboard objectives
scoreboard objectives remove tmm_playercount
scoreboard objectives remove tmm_playercount_cache

scoreboard objectives remove tmm_ready
scoreboard objectives remove tmm_ready_cache

scoreboard objectives remove tmm_timer
scoreboard objectives remove tmm_timer_cache

scoreboard objectives remove tmm_lock_timer
scoreboard objectives remove tmm_lock_timer_timer
scoreboard objectives remove tmm_lock_timer_cache

scoreboard objectives remove tmm_debug
scoreboard objectives remove tmm_debug_ui

scoreboard objectives remove tmm_handler
scoreboard objectives remove tmm_handler_cache

# Remove all scoreboard scores
scoreboard players reset *

# Unload complete message
tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Datapack disabled!","color":"red"}]

# Actually disable the datapack
datapack disable "file/TMMExtended"
