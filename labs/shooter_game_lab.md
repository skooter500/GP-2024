# Shooter Game Lab Exercises

Analyse the shooter_game scene carfully and write down your explanation of how the following systems work:

- How the shape of each of elements in the game are drawn
- How the player turns
- How the player moves
- How to modify the attributes of the player and create new ones if needed
- What happens if the player crashes into a ufo
- How the colors are assigned
- How to adjust the firing rate of the player and how would you do this in code
- What determines the positions of the ufo's
- How would you change the ranges?
- How is the ufo color calculated
- What is the firing sequence of a ufo?
- How do the UFO and the player appear. Can you improve this?

## Create loot that drops when the player shoots a ufo
- ammo. Create a design for an ammo drop. Make it rotate in a random direction and head towards the players position when it spawns 
- lives. Same as above. Different color and shape. maybe a box with a cross in it
- If a bullet from the player or the ufo's hits a loot drop, it explodes
- Use the ufo_spawner to spawn spirals (the ones we made last week)
- fire rate powerup
- fire_power


# Gameplay
- add level progression so that the number of aliens increases as the levels increase
- start at level 1 with 1 alien and increase the number of aliens that spawn
- add camera zoom on a different input
- add lives to the ufo so that some of them take more hits to kill

## Create the following enemy types with shapes of your own design:

## ufo_player_seeker
- Make the enemy move towards the player and drop bombs

## ufo_player_seeker_horiz
- This enemy should move to the same Y as the player and then move towards the player

## sprite enemy
- An enemy that is drawn with a sprite 2D or animated sprite

## rotate enemy
- an enemy that rotates to face the player and moves towards the player shooting in the direction of the player

Create an area2D node that spawns enemies when the player enters

## Create the following spawning systems
- Spawn enemies in a row
- Spawn enemies in a column
- Spawn enemies off the sides of the screen that move towards the player


