# Resets player counter (so it doesn't accumulate over ticks)
scoreboard players set counter tmm_playercount 0

# Count players in the ready area
# : You might want to adjust the coordinates to match your ready area if you've changed it
# : The distance coordinates needs to be changed in multiple places if you do so:
# : - .\ready_area\tick.mcfunction
# : 
# : Here's how distance coordinates works: https://i.imgur.com/Ee46y6d.png
execute as @a[x=-1017,dx=203,y=0,dy=4,z=-364,dz=6] run scoreboard players add counter tmm_playercount 1

# Check how many players are in the ready area
# If 6 or more, set ready flag to 1
# If fewer than 6, set ready flag to 0
# : 6 players is the minimum required for the TMM mod to start the game, so avoid changing this number
execute if score counter tmm_playercount matches 6.. if score lock tmm_lock_timer matches 0 run scoreboard players set ready tmm_ready 1
execute if score counter tmm_playercount matches 6.. if score lock tmm_lock_timer matches 0 run execute unless score ready tmm_ready_cache matches 1 run scoreboard players set ready tmm_ready_cache 1

execute unless score counter tmm_playercount matches 6.. run scoreboard players set ready tmm_ready 0
execute unless score counter tmm_playercount matches 6.. run execute if score ready tmm_ready_cache matches 1 run scoreboard players set ready tmm_ready_cache 0

# Train door teleportation handling
# If there are players near the train door (from outside), teleport them inside the train
execute if entity @p[gamemode=!spectator,x=-884.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-884.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -884.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-886.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-886.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -886.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-908.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-908.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -908.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-910.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-910.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -910.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-932.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-932.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -932.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-934.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-934.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -934.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-956.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-956.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -956.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-958.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-958.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -958.5 1 -358.5
execute if entity @p[gamemode=!spectator,x=-980.5,dx=0,y=0,dy=0,z=-356.5,dz=0] run tp @p[gamemode=!spectator,x=-980.5,dx=0,y=0,dy=0,z=-356.5,dz=0] -980.5 1 -358.5
# If there are players near the train door (from inside), teleport them outside the train
execute if entity @p[gamemode=!spectator,x=-884.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-884.5,dx=0,y=1,dy=0,z=-358,dz=0] -884.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-886.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-886.5,dx=0,y=1,dy=0,z=-358,dz=0] -886.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-908.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-908.5,dx=0,y=1,dy=0,z=-358,dz=0] -908.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-910.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-910.5,dx=0,y=1,dy=0,z=-358,dz=0] -910.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-932.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-932.5,dx=0,y=1,dy=0,z=-358,dz=0] -932.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-934.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-934.5,dx=0,y=1,dy=0,z=-358,dz=0] -934.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-956.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-956.5,dx=0,y=1,dy=0,z=-358,dz=0] -956.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-958.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-958.5,dx=0,y=1,dy=0,z=-358,dz=0] -958.5 0 -354.5
execute if entity @p[gamemode=!spectator,x=-980.5,dx=0,y=1,dy=0,z=-358,dz=0] run tp @p[gamemode=!spectator,x=-980.5,dx=0,y=1,dy=0,z=-358,dz=0] -980.5 0 -354.5
