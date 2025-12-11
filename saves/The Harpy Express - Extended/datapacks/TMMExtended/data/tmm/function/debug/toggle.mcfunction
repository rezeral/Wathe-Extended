# Toggle debug mode (function called when debug item is used)
scoreboard players operation debug_cache tmm_debug = debug tmm_debug
execute if score debug_cache tmm_debug matches 0 run function tmm:debug/enable
execute unless score debug_cache tmm_debug matches 0 run function tmm:debug/disable
scoreboard players set debug_cache tmm_debug 0
