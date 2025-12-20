# beta-2.3.130

### 🆕 Additions
- Randomized player teleportation across the train at game start.

### 📋 Changes
- Wathe Extended datapack:
  - Renamed objectives/score IDs from "tmm" to "wathe"
  - Reorganized functions
  - Centralized and optimized tick functions
  > Datapack intended to work with the default world-save only, but can be modified to fit with custom maps. <br> I'll try to make the datapack variables, functions and stuff like that easier to customize in future updates for the people that might want this datapack and its features to be a part of their custom maps, otherwise have fun tweaking the mess I've created to fit your own goods! :3
- Reverted auto-start timer to 10 seconds (previously 30)
- Updated default client configuration.
- Wathe mod updated to version [1.3](https://modrinth.com/mod/wathe/version/1.3-1.21.1)
<details>
<summary>Show Wathe's changelog</summary>

- Changed the mod identifier from "trainmurdermystery" to "wathe" and renamed it to avoid confusion with the Harpy Express modpack and reflect the mod now allowing maps other than trains
  - Previous maps should still be compatible, as block, item and entity aliases were added to transition mod identifiers
- Added a new Map Effect API class
  - Stored on the Game Component, this new class allows modders to make custom effects for maps, with custom initialize
    and finalize logic independent of the game mode
  - Using the Last Voyage of the Harpy Express as an example, the wathe:harpy_express map effects (excluding the lobby
    one) give the players the keys to their room and their letters, as well as setting the time of day and all other
    ambient effects for the train
  - /wathe:start now requires a map effect identifier to start the game
  - For instance, /wathe:start wathe:murder wathe:harpy_express_day allows you to play the murder mystery game mode
    during the day
  - Added a generic simple map effect that can be used by custom non-train maps
- Added a /wathe:mapVariables command that allows changing variables for custom maps:
  - gameModeAndMapEffect: The default game mode and map effect the map will use (with auto-start or when using the train horn).
  - spawnPos: The spawn position and orientation players will be reset to once the game ends.
  - spectatorSpawnPos: The spawn position and orientation players will be set to when set as spectators at the start of a game.
  - readyArea: The lobby area which players need to be in to be selected for a game.
  - playAreaOffset: The offset players will be teleported by from the ready area into the play area.
  - playArea: The play area outside which players will be eliminated.
  - resetTemplateArea: The template that will be copied over the play area in order to reset the map.
  - resetPasteOffset: The offset at which the template should be pasted.
- Added knife skins for Patreon and YouTube supporters
  - Can be changed by right-clicking a knife in the inventory
  - Skins added: Ceremonial Dagger and Ice Pick
- Moved weights, bounds, auto-start and backfire commands to a new /wathe:gameSettings command
- Added a new role dividend setting to /wathe:gameSettings that allows setting custom killer and vigilante counts
- Lowered the default dividend for both killers and vigilantes to 5 instead of 6
- Players can now sleep at any time of the day
- Fixed double doors not jamming together
- Fixed Derringers not replenishing on kill
- Fixed Revolvers being able to be double fired
- Fixed the ready area being slightly too small
- Limited knife max use to 5 seconds to prevent "cheesing and waiting around a corner with a knife ready" really long strat
- Tweaked the API to allow more modability (PunIsIntendeds)
- Updated French translation (PadjokeJ)
- Updated German translation (Lukas0094)
- Updated Chinese translation (ZeroIcceBear)
- Added Vietnamese translation (Vuyn)

</details>

### 🔧 Fixes
- Items that fall into the void (specifically when players are pushed or jump off the train while holding items) now properly teleport to the nearest dead body
  - Added a fallback if there's no dead bodie, items wiil teleport to the nearest alive player
- Fixed skin transparency

# beta-2.2.126

### 🆕 Additions
- New roles:
  - Mimic
    - Civilian Role
    - Appears as a Killer Cohort to other killers
    - Spawns with a Fake Knife
    - Can purchase *Lockpicks*, *Delusion Vials*, *Firecrackers* and *Notes*
    - Gains coins passively over time.
  - Guesser *(Disabled by default)*
    - Civilian Role
    - Can guess player's role: if the guess is correct the player dies; if incorrect, the Guesser dies.
- Added blood particle effects when killing players *(Disabled by default, can be enabled/disabled using <kbd>B</kbd>)
- Added some little QoL mods
- Added a cinematic intro at launch (might be buggy but I though it would look cool so I made it :3)
- New overhauled main menu layout
- New modpack icon, thumbnail and backgrounds

### 📋 Changes
- Gameplay balancing:
  - **Conductor**
    - The *Master Key* will now be seen as a *Lockpick* for others if there's less than 10 players in the game.
  - **Voodoo**
    - Shooting the Voodoo now causes revolvers to drop from the shooter.
  - Disabled the backfire mechanic
- Game auto-start timer is now 30 seconds instead of 10.
- Items that falls outside the train (in the void) will now be teleported back to the closest dead body.

### 🔧 Fixes
- Players won't take fall damage and fire damage anymore
- Fixed the fast teleportation item not being given to players that've joined late
- Fixed knockback not being applied when punching with a *Knife*
- Fixed missplaced interaction safeguards (should be fully fixed now!)

# beta-2.1.126

### 🔧 Fixes
- Fixed outdated mod configurations, should be better now for people updating the modpack if it was already installed (sorry)

# beta-2.0.126

### 🆕 Additions
- New roles:
  - **Vulture**
    - Neutral Role
    - Can eat dead bodies to turn into a killer
    - Only enables past 8 players.
  - **Recaller**
    - Civilian Role
    - Can save a location to teleport to later from 100 coins.
    - Gains 50 coins per task done.
  - **Better Vigilante** *(Disabled by default)*
    - Civilian Role
    - Spawns with a revolver and a grenade
- New items:
  - **Defense Vial**
    - **Bartender** exclusive
    - Grants the drinker one extra hit (similar to Psycho Armor).
  - **Delusion Vial**
    - **Jester** exclusive
    - Mimics poison by applying visual effects but does not cause death.
- Added an item that fast teleports you to the Lobby train
- Added a system preventing players from standing close/inside train doors before the game starts (wich was allowing them to exit the train without needing a Master Key, Lockpick, or Crowbar).

### 📋 Changes
- Gameplay balancing:
  - **Bartender**
    - Can see poison and poisoned players.
    - Can now purchase a *Defense Vial* for 100 coins (50 coins per task).
  - **Jester**
    - Can now see the round timer.
    - Can shoot with their fake gun.
    - Gains coins passively over time.
    - Can purchase *Firecrackers*, *Lockpicks*, *Notes*, and *Delusion Vials*.
  - **Coroner**
    - Can see the roles of dead players (also visible to spectators).
  - **Executionner**
    - Gains coins passively over time.
    - Can purchase *Firecrackers*, *Lockpicks*, *Notes*, and *Delusion Vials*.
    - Their target's skin can now be seen on the UI
  - **Noisemaker**
    - Gains coins passively over time.
    - Can purchase *Firecrackers* for 75 coins.
  - When innocents shoots other innoncents, assuming they've passed the backfire chance, they drop their gun and won't be able to pick one up until the end of the game
- **Phantom** is now enabled by default.
- **Executioner** is now enabled by default.
- The **Executioner**'s targets are now visible to spectators when hovering over the **Executioner**.

### 🔧 Fixes
- Some HUD/Menus fixes
- Removed Fresh Moves (With animated eyes) due to compatibility issues
- Removed Essential mod due to compatibility issues, can be added back if wanted but might break some stuff.
- Interaction safeguards are now fully completed, no more glitch abuses with trapdoors and other stuff!
- Fixed the ready-area boundaries.

# alpha-1.6.126

### 🆕 Additions
- Added Noelle's Roles add-on for TMM (see the description for more informations about the roles)
- Added default mod configuration (in case some people want to change client-side settings)

### 🔧 Fixes
- Some HUD/Menus tweaks and fixes
- Various map fixes
- *...and maybe some more stuff that I've forgot*

# alpha-1.5.126

### 🆕 Additions
- Added interaction safeguards to the lobby and within the playable train **(WIP)**

### 📋 Changes
- Removed unneeded modded items and blocks
- Adjusted shader settings to reduce blurriness and improve brightness **(WIP, still experiencing notable lag)**

### 🔧 Fixes
- Further reorganized and polished the train’s furniture and overall layout
- Minor tweaks to various mod configurations

# alpha-1.4.126

### 📋 Changes
- Removed unneeded mods

### 🔧 Fixes
- Fixed collisions, they should be working correctly now
- Room key assignments fixed (for real this time)

# alpha-1.3.126

### 📋 Changes
- Harpy Express mod updated to the latest release

### 🔧 Fixes
- Room keys assignment fixed
- Missing blocks and furniture models fixed
- Various HUD tweaks and fixes

# alpha-1.2.115

### 🆕 Additions
- Fully revamped HUD and menu elements with new themes and visual styles
- Added a default client configuration
- Added Shader configuration (WIP, shaders currently cause significant lag)
- Updated the world save file with a refined lobby and ongoing train customization (WIP)
- Complete client and mod configurations

### 🔧 Fixes
- Various performance optimizations
