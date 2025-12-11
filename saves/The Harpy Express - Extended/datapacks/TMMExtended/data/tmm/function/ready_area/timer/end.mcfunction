# Stop/reset timer and temporaly lock ready state so the timer doesn't restart immediately
scoreboard players set timer tmm_timer 0
scoreboard players set lock tmm_lock_timer 1

# Start a 5 second (100 ticks) countdown to automatically clear the ready lock
# This is to prevent immediate re-activation of the timer while the game starts
scoreboard players set timer_lock_timer tmm_lock_timer_timer 100

# Ensure ready flag is off
scoreboard players set ready tmm_ready 0

# Assign unique random positions to players in the ready area based on positions stored in "tmm:trainpos"
# function tmm:teleport/assign_pos
## WIP - not implemented yet
