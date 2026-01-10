![Header](https://raw.githubusercontent.com/rezeral/Wathe-Extended/master/.github/assets/img/header.png)

**🚂 A train murder mystery social game**

This modpack expands [The Last Voyage of the Harpy Express](https://modrinth.com/modpack/harpy-express) with new roles, quality‑of‑life addons, furniture mods, performance improvements, and more customization options. It includes a fully decorated train + scenery by default, ready for you to modify.

> **INFO:** This modpack is currently in active development, and I’m not fully familiar with how the Modrinth App handles modpacks. Because of this, updates may occasionally cause issues. If you experience any problems after an update, try creating a fresh instance of the modpack to see if that fixes issues.
> It's also recommended to update the `mods` and `config` folders on dedicated servers inbetween updates to avoid any conflicts.
> If you encounter any bugs or issues, feel free to make a report on [GitHub](https://github.com/rezeral/Wathe-Extended/issues), I'll make sure to help best as I can!

## 🔎 Modpack overview

These are some of the included mods *in addition* to the base modpack:

- [Sodium](https://modrinth.com/mod/sodium) & [Iris Shaders](https://modrinth.com/mod/iris)
- [Noelle's Roles - Wathe](https://modrinth.com/mod/noelles-roles-tmm)
- [Blood - Wathe](https://modrinth.com/mod/tmm-blood)
- [Stupid Express](https://modrinth.com/mod/stupid-express)
- [Supplementaries](https://modrinth.com/mod/supplementaries) & [Amendments](https://modrinth.com/mod/amendments)
- [Immersive Furnitures](https://modrinth.com/mod/immersive-furniture)
- [Presence Footsteps](https://modrinth.com/mod/presence-footsteps)
- [Not Enough Animations](https://modrinth.com/mod/not-enough-animations)
- [Fancy Menu](https://modrinth.com/mod/fancymenu) & [Drippy Loading Screen](https://modrinth.com/mod/drippy-loading-screen)

Some of the features and content that are present *in addition* to the base modpack:

- **Custom train blocks, furnitures and layout**
- **New roles** and **modifiers** for more gameplay depth
- **In‑game configuration menu for OPs** *(Planned)*
- **Debug tools** and custom **datapack** to assist with customizing the map and game

Default keybindings that might be usefull in-game:

- <kbd>V <kbd>  Opens Simple Voice Chat menu
- <kbd>G <kbd>  Use role ability
- <kbd>Left Alt <kbd>  Killer Instinct

## ❓ How to Play

1. Host a server with the provided world.
2. Ensure the server/world has these settings:
   - Peaceful difficulty
   - Adventure mode
   - PvP enabled
   - Command blocks enabled
3. Minimum **6 players** required.
4. Players board the train in the lobby.
5. Once 6+ players are aboard, ring the horn or wait until the timer ends to begin.
6. To spectate, simply stay off the train.

## 🎭 Roles

Use `/listRoles` to view roles and `/setEnabledRole` to enable/disable them.

### ![Killer Roles](https://raw.githubusercontent.com/rezeral/Wathe-Extended/master/.github/assets/img/killer.png)

- **Morphling**
<br> Can morph into any alive player on a cooldown.

- **Phantom**
<br> Can turn invisibile on a cooldown by pressing <kbd>G</kbd>. Held items are still visible!

- **Swapper**
<br> Can swap two people around the map on a cooldown.

- **Necromancer** *(Enabled when more than 1 Killer)*
<br> When a Killer dies, they have the opportunity to bring someone back from the dead to work for them.

- **Avaricious** *(Enabled when more than 1 Killer)*
<br> Starts the game with 50 coins.
<br> Gains 30 coins for every player which is around them (excluding themselves).

- **Muzzler**
<br> Can silence any players for 75 coins
<br> When Muzzled, staying outside for too long will suffocate you, and other players can't hear you speak.

### ![🥸 Neutral Roles](https://raw.githubusercontent.com/rezeral/Wathe-Extended/master/.github/assets/img/neutral.png)

- **Jester**
<br> Has a *Fake Knife* and a *Fake Revolver* that can fake shots.
<br> When shot, goes *Psycho Mode*. Does not have a *Shield*, so one shot will kill the Jester.
<br> Can accidentally kill their killer teammates and end the game, make sure to co-operate!
<br> Can purchase *Firecrackers*, *Lockpicks*, *Notes*, and *Delusion Vials*.
<br> Gains coins passively over time.

- **Vulture** *(Disabled under 8 players)*
<br> Can eat dead bodies to turn into a Killer.

- **Executioner**
<br> Gains a target at the start of the game.
<br> If the target dies to a Civilian role or natural causes, the Executioner becomes a random Killer role.
<br> If the target dies to a Killer, the executioner re-targets.
<br> Can purchase *Firecrackers*, *Lockpicks*, *Notes*, and *Delusion Vials*.
<br> Gains coins passively over time.

- **Amnesiac**
<br> Can permanently take any dead body's role for the rest of the round. Adopting their abilities and win condition.

- **Arsonist**
<br> Spawn with a *Gas Can* and a *Lighter*
<br> Their goal is to douse all players and ignite them all.
<br> Igniting the *Lighter* too early will kill them.

- **Initiate**
<br> Has to kill the other **Initiate** in order to become a Killer.
<br> Gains 50 coins per tasks done.
<br> If either of the Initiates die from anyone other than another **Initiate**, the alive Initiate becomes an **Amnesiac**
<br> If an **Initiate** attempts to kill a player that isn't the other **Initiate**, the **Killer Initiate** will drop dead instead

### ![👤 Civilian Roles](https://raw.githubusercontent.com/rezeral/Wathe-Extended/master/.github/assets/img/civilian.png)

- **Conductor**
<br> Has a *Master Key* to every door on the train.
<br> The *Master Key* will drop if the Conductor dies.

- **Bartender**
<br> Can see people who've drink through walls temporarily.
<br> Can see poisonned food and drinks and poisonned players.
<br> Can buy *Defense Vial* for 100 coins.
<br> Gains 50 coins per task done.

- **Noisemaker** *(Disabled by default)*
<br> When the Noisemaker dies, their body can be seen by everyone though walls.
<br> Can purchase *Firecrackers*.
<br> Gains coins passively over time.

- **Recaller**
<br> Can save a location to teleport to later by pressing <kbd>G</kbd> for 100 coins.
<br> Gains 50 coins per task done.

- **Coroner**
<br> Can see the role, reason and time of death of the dead bodies.

- **Voodoo**
<br> Can choose one player that will die alongside themselves.
<br> Their target will not die if the Voodoo dies of natural causes.

- **Mimic**
<br> Appears as a Killer Cohort to other Killers.
<br> Spawns with a Fake Knife.
<br> Can purchase *Lockpicks*, *Delusion Vials*, *Firecrackers* and *Notes*.
<br> Gains coins passively over time.

- **Trapper**
<br> Can purshase a *Role Mine*.
<br> Gains 50 coins per tasks done.
<br> The *Role Mine* can be placed and can gets the roles of 3 people that pass into it's area. 
<br> The *Role Mine* makes a beep sound alerting any players that got trapped.
<br> It does not mention the names of the players; only their roles.

- **Starstruck**
<br> Can use Starstruck ability once every 90 seconds.
<br> While Starstruck, can move faster and see players though walls using instinct for 15 seconds.
<br> Upon completing their current task, the ability cooldown will be decreased by 5 seconds.

</details>

<details>
<summary>Bonus roles</summary>
  
- **Awesome Binglus** *(Disabled by default)*
<br> Awesome Binglu
<br> Spawns with a lot of notes
 
- **The Insane Damned Paranoid Killer Of Doom Death Destruction And Waffles** *(Disabled by default)*
<br> Killer Role
<br> Can hear dead players

- **Better Vigilante** *(Disabled by default)*
<br> Civilian Role
<br> Spawns with a revolver and a grenade

</details>

## 🪄 Modifiers

Use `/listRoles` to view modifiers and `/setEnabledModifiers` to enable/disable them.

- **Guesser**
<br> Can guess player's role: if the guess is correct the player dies; if wrong, the Guesser dies.

- **Tiny**
<br> Makes the player smaller, that's it.

- **Chameleon**
<br> Makes the player slowly fading away when standing still.

- **Lovers**
<br> Two players become romantically linked and share the same win condition: they win or lose together regardless of their respective sides.
   - If both lovers are Civilians, they can still win alongside other Civilians.

- **Allergic** *(Disabled by default)*
<br> The player is allergic to some food or drink; consuming the affected item can trigger up to three different side effects.

## ⚖️ Credits

Original [The Last Voyage of the Harpy Express](https://modrinth.com/modpack/harpy-express) modpack by [@doctor4t](https://modrinth.com/user/RAT)
<br>
Awesome add-ons for the Wathe mod and the people who've made them:
- [Blood - Wathe](https://modrinth.com/mod/wathe-blood) by [@Buff_sheep](https://modrinth.com/user/Buff_sheep)
- [Noelle's Roles - Wathe](https://modrinth.com/mod/noelles-roles-tmm) by [@agmas](https://modrinth.com/user/agmas)
- [Stupid Express](https://modrinth.com/mod/stupid-express) by [@flowingforever](https://modrinth.com/user/flowingforever)
- [Starry Express](https://modrinth.com/mod/starexpress) by [@AussieBox](https://modrinth.com/user/AussieBox)

<br>

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/jOjo3WRIMe8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<br>

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/0Mee_7gmsmQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
