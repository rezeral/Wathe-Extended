# Announce player count changes
execute unless score counter tmm_playercount = counter tmm_playercount_cache run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Players: ","color":"yellow"},{"score":{"name":"counter","objective":"tmm_playercount"},"color":"white"}]
execute unless score counter tmm_playercount = counter tmm_playercount_cache run scoreboard players operation counter tmm_playercount_cache = counter tmm_playercount

# Announce timer lock state
execute unless score lock tmm_lock_timer = lock tmm_lock_timer_cache run execute if score lock tmm_lock_timer matches 1 run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Lock: ","color":"dark_purple"},{"text":"True","color":"green"}]
execute unless score lock tmm_lock_timer = lock tmm_lock_timer_cache run execute if score lock tmm_lock_timer matches 0 run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Lock: ","color":"dark_purple"},{"text":"False","color":"red"}]
execute unless score lock tmm_lock_timer = lock tmm_lock_timer_cache run scoreboard players operation lock tmm_lock_timer_cache = lock tmm_lock_timer

# Announce timer start and end
execute if score ready tmm_ready matches 1 run execute if score timer tmm_timer matches 1 run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Timer: ","color":"aqua"},{"text":"Start","color":"green"}]
execute if score ready tmm_ready matches 0 run execute if score timer tmm_timer matches 0 run execute unless score timer tmm_timer = timer tmm_timer_cache run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Timer: ","color":"aqua"},{"text":"Stop","color":"red"}]
execute if score timer tmm_timer matches 200 run execute if score debug tmm_debug matches 1 run tellraw @a [{"text":"[TMM] ","color":"blue"},{"text":"Timer: ","color":"aqua"},{"text":"End","color":"gold"}]
execute unless score timer tmm_timer = timer tmm_timer_cache run scoreboard players operation timer tmm_timer_cache = timer tmm_timer
