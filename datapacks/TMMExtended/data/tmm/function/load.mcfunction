# TMM Extended Datapack
# Author: @rezeral
# License: GPL-3.0 License
# Version: beta-2.2.130
# 
# At first I tried to make all theses features as a mod, but due to various reasons I switched to a datapack envrionment
# so it could be more easily used by the community and have more flexibility and customization (also I suck at Java programming lol)
# It might not be as efficient as a mod, but I tried to optimize it as much as possible within the datapack limitations.
# This datapack is modulable, you can edit or remove parts as needed as long as you understand the logic behind it.
# I tried to comment as much as possible to help you understand how it works.
# If you have any questions, feel free to reach out to me on GitHub.

# Clear previous train positions from storage
# : This is usefull when adding new positions or editing existing ones inbetween reloads
data remove storage tmm:trainpos pos

# Remove all scoreboard objectives
# : Even though the unload function does the same, it's needed to ensure a clean state of the objectives before re-adding them
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
# : Just in case any score remained after objective removal
scoreboard players reset *

# Call all predefined train positions into storage
# : 16 positions total by default, you can add or remove positions as needed, but make sure to update any related logic accordingly
# : Positions are defined in .\data\tmm\function\teleport\pos\
function tmm:teleport/pos/1
function tmm:teleport/pos/2
function tmm:teleport/pos/3
function tmm:teleport/pos/4
function tmm:teleport/pos/5
function tmm:teleport/pos/6
function tmm:teleport/pos/7
function tmm:teleport/pos/8
function tmm:teleport/pos/9
function tmm:teleport/pos/10
function tmm:teleport/pos/11
function tmm:teleport/pos/12
function tmm:teleport/pos/13
function tmm:teleport/pos/14
function tmm:teleport/pos/15
function tmm:teleport/pos/16

# Objectives variables initialization
# : Do not edit or delete these lines unless you know what you are doing
scoreboard objectives add tmm_playercount dummy {"text":"Players","color":"yellow"}
scoreboard objectives add tmm_playercount_cache dummy {"text":"Players (Cache)","color":"yellow"}

scoreboard objectives add tmm_ready dummy {"text":"Ready","color":"dark_green"}
scoreboard objectives add tmm_ready_cache dummy {"text":"Ready (Cache)","color":"dark_green"}

scoreboard objectives add tmm_timer dummy {"text":"Timer","color":"aqua"}
scoreboard objectives add tmm_timer_cache dummy {"text":"Timer (Cache)","color":"aqua"}

scoreboard objectives add tmm_lock_timer dummy {"text":"Ready Lock","color":"dark_purple"}
scoreboard objectives add tmm_lock_timer_cache dummy {"text":"Ready Lock (Cache)","color":"dark_purple"}
scoreboard objectives add tmm_lock_timer_timer dummy {"text":"Ready Lock Timer","color":"dark_purple"}

scoreboard objectives add tmm_debug dummy {"text":"Debug","color":"red"}
scoreboard objectives add tmm_debug_ui dummy {"text":"Debug UI","color":"red","bold":true}

scoreboard objectives add tmm_handler minecraft.used:minecraft.carrot_on_a_stick {"text":"Interaction Handler","color":"dark_red"}
scoreboard objectives add tmm_handler_cache dummy {"text":"Interaction Handler (Cache)","color":"dark_red"}

# TODO: Objectives needed for random position assignments (to be implemented)
# scoreboard objectives add tmm_assigned dummy {"text":"Assigned Flag","color":"gold"}
# scoreboard objectives add tmm_assigned_slot dummy {"text":"Assigned Slot","color":"gold"}

# Load complete message
tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Datapack enabled!","color":"green"}]
