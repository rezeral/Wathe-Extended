# Debug stuff, you can ignore this section if you don't need it
# I recommend you should not edit or delete these lines unless you know what you are doing 

# Interaction handler checks
# If used the toggle debug item
execute as @a[scores={tmm_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_use:1b}}}}] run function tmm:debug/toggle
# If used the teleport to scenery item
execute as @a[scores={tmm_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_tp:1b}}}}] run function tmm:debug/tp/scenery
# If used the add players item
execute as @a[scores={tmm_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_addplayers:1b}}}}] run function tmm:debug/players/add
# If used the remove players item
execute as @a[scores={tmm_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_removeplayers:1b}}}}] run function tmm:debug/players/remove
# If used the fast teleportation tool
execute as @a[scores={tmm_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_tool_fasttp:1b}}}}] run function tmm:debug/tp/train

# Reset handler scores for players who used debug items
execute as @a[scores={tmm_handler=1..}] run scoreboard players set @s tmm_handler 0

# If no players are in creative, disable debug
execute unless entity @a[gamemode=creative] if score debug tmm_debug matches 1 run function tmm:debug/disable

# Teleports back fake players inside the ready area when game ends
execute if entity @p[name=Alpha,x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] run tp Alpha -981.5 1.00 -360.5 225 0
execute if entity @p[name=Bravo,x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] run tp Bravo -973.5 1.00 -359.5 225 0
execute if entity @p[name=Charlie,x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] run tp Charlie -942.5 1.00 -360.5 125 0
execute if entity @p[name=Delta,x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] run tp Delta -921.5 1.00 -359.5 -180 0
execute if entity @p[name=Echo,x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] run tp Echo -902.5 1.50 -362.5 0 0

# Update debug UI entries
execute if score debug tmm_debug matches 1 run scoreboard players operation §bTimer tmm_debug_ui = timer tmm_timer
execute if score debug tmm_debug matches 1 run scoreboard players operation §2Ready tmm_debug_ui = ready tmm_ready
execute if score debug tmm_debug matches 1 run scoreboard players operation §ePlayers tmm_debug_ui = counter tmm_playercount
execute if score debug tmm_debug matches 1 run scoreboard players operation §5Lock tmm_debug_ui = lock tmm_lock_timer
execute if score debug tmm_debug matches 1 run scoreboard players operation §5Lock_Timer tmm_debug_ui = timer_lock_timer tmm_lock_timer_timer

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
