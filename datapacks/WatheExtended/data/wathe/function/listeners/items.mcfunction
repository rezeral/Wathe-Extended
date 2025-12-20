
# This function is called every tick through wathe:tick 
# Debug stuff, I recommend you should not edit or delete these lines unless you know what you are doing 

# Interaction handler checks
# If used the toggle debug item
execute as @a[scores={wathe_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_use:1b}}}}] run function wathe:debug/toggle
# If used the teleport to scenery item
execute as @a[scores={wathe_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_tp:1b}}}}] run function wathe:debug/tp/scenery
# If used the add players item
execute as @a[scores={wathe_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_addplayers:1b}}}}] run function wathe:debug/players/add
# If used the remove players item
execute as @a[scores={wathe_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_removeplayers:1b}}}}] run function wathe:debug/players/remove
# If used the fast teleportation tool
execute as @a[scores={wathe_handler=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_tool_fasttp:1b}}}}] run function wathe:debug/tp/train

# Reset handler scores for players who used debug items
execute as @a[scores={wathe_handler=1..}] run scoreboard players set @s wathe_handler 0

# Give debug items to creative players
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_use:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"red","italic":false,"text":"Toggle Debug"}',custom_data={wathe_debug_use:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_tp:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"gray","italic":false,"text":"Teleport to Scenery"}',custom_data={wathe_debug_tp:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_addplayers:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"green","italic":false,"text":"Add Players"}',custom_data={wathe_debug_addplayers:1b}] 1
execute as @a[gamemode=creative] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_debug_removeplayers:1b}}}]}] run give @a[gamemode=creative] carrot_on_a_stick[custom_name='{"color":"dark_red","italic":false,"text":"Remove Players"}',custom_data={wathe_debug_removeplayers:1b}] 1

# Give fast teleportation tool to adventure mode players that are in the lobby area
execute if entity @a[x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] unless entity @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wathe_tool_fasttp:1b}}}]}] run give @a[x=-873.0,dx=0,y=0,dy=0,z=-323.0,dz=0] carrot_on_a_stick[custom_name='{"color":"aqua","italic":false,"text":"Teleport to Train"}',custom_data={wathe_tool_fasttp:1b}] 1

# Remove debug items from non-creative players
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_use:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_use:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_tp:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_tp:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_addplayers:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_addplayers:1b}]
execute as @a[gamemode=!creative] if items entity @s hotbar.* minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_removeplayers:1b}] run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={wathe_debug_removeplayers:1b}]

# Remove bowls from players inventory (don't ask why this is something, it's needed)
execute as @a[gamemode=!creative] if entity @s[nbt={Inventory:[{id:"minecraft:bowl"}]}] run clear @s minecraft:bowl

# Checks for dropped items falling outside the playing area, if so, teleports them to the closest player body
execute as @e[type=item,x=-57,dx=245,y=117.5,dy=3,z=-551,dz=31] at @s if entity @e[type=wathe:player_body] run execute at @e[type=wathe:player_body,limit=1,sort=nearest] run tp @s ~ ~0.5 ~
execute as @e[type=item,x=-57,dx=245,y=117.5,dy=3,z=-551,dz=31] at @s unless entity @e[type=wathe:player_body] run execute at @e[type=player,limit=1,sort=nearest] run tp @s ~ ~0.5 ~
# TODO: Delete previous iterations - They're not working as intended, kept them for reference
# execute as @e[type=item,x=-57,dx=245,y=117.5,dy=3,z=-551,dz=31] at @e[type=wathe:player_body,limit=1,sort=nearest] run tp @s ~ ~0.5 ~
# execute if entity @e[type=item,x=-57,dx=245,y=117.5,dy=3,z=-551,dz=31] run execute as @e[type=item,x=-57,dx=245,y=117.5,dy=3,z=-551,dz=31] at @e[type=wathe:player_body,sort=nearest] run tp @s ~ ~0.5 ~
