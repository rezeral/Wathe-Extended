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

# Checks for dropped items outside the play area, if an item is found, teleports it to the closest dead body
execute if entity @e[type=item,x=-57,dx=245,y=119.5,dy=1,z=-551,dz=31] run execute as @e[type=item,x=-57,dx=245,y=119.5,dy=1,z=-551,dz=31] at @e[type=trainmurdermystery:player_body,sort=nearest] run tp @s ~ ~1 ~
