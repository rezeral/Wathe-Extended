# Debug stuff, you can ignore this section if you don't need it
# I recommend you should not edit or delete these lines unless you know what you are doing 

# Give debug items to creative players
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_use:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"red","italic":false,"text":"Toggle Debug"}',custom_data={tmm_debug_use:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_tp:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"gray","italic":false,"text":"Teleport to Scenery"}',custom_data={tmm_debug_tp:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_addplayers:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"green","italic":false,"text":"Add Players"}',custom_data={tmm_debug_addplayers:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_debug_removeplayers:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"dark_red","italic":false,"text":"Remove Players"}',custom_data={tmm_debug_removeplayers:1b}] 1

# Give fast teleportation tool to adventure mode players that are in the Lobby
execute if entity @a[x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] unless entity @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tmm_tool_fasttp:1b}}}]}] run give @a[x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] carrot_on_a_stick[custom_name='{"color":"aqua","italic":false,"text":"Teleport to Train"}',custom_data={tmm_tool_fasttp:1b}] 1

# Remove debug items from non-creative players
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_use:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_use:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_tp:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_tp:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_addplayers:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_addplayers:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_removeplayers:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={tmm_debug_removeplayers:1b}]

# Remove bowls from players inventory (don't ask why this is something, it's needed)
execute as @a[gamemode=!creative] if entity @s[nbt={Inventory:[{id:"minecraft:bowl"}]}] run clear @s minecraft:bowl

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
