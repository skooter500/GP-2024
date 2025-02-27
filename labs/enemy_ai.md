# Classic Shooter Game Analysis Lab (2 hours)

## Overview
In this lab, you will analyze the core mechanics of a classic arcade shooter game (Asteroids, Space Invaders, or Air Sea Battle) and implement one or two of its fundamental systems in Godot. This exercise focuses on understanding game design patterns through analysis and basic implementation.

## Objectives
- Analyze the mechanics of a classic arcade shooter
- Identify the core systems that make the game work
- Implement a basic version of one key system in Godot

## Part 1: Game Analysis (45 minutes)

### Choose one classic shooter to analyze:
- **Asteroids**: Player controls a ship that rotates and thrusts in a wrap-around space, shooting asteroids that break into smaller pieces
- **Space Invaders**: Player moves horizontally shooting at a grid of aliens that move in formation and periodically shoot back
- **Air Sea Battle**: Player controls a fixed turret that can rotate to shoot at moving targets

### Analysis Questions
Working in pairs, analyze your chosen game by answering these questions:

1. **Core Mechanics**
   - What are the primary actions the player can take?
   - How does the control scheme work?
   - What is the main challenge the player faces?

2. **Movement Systems**
   - How do player-controlled objects move?
   - How do enemies/targets move?
   - Are there any interesting physics or movement patterns?

3. **Combat/Shooting Systems**
   - How does the shooting mechanism work?
   - What happens when projectiles hit targets?
   - Are there any limitations to shooting (cooldown, ammo, etc.)?

4. **Progression & Difficulty**
   - How does the game increase in difficulty?
   - What variables could be adjusted to make the game harder/easier?

5. **Game Feel**
   - What makes the game satisfying to play?
   - Are there any feedback systems (visual/audio cues)?

## Part 2: System Implementation (75 minutes)

Based on your analysis, choose ONE of the following systems from your game to implement in Godot:

### Option A: Movement System
Implement the core movement mechanics of your chosen game:
- For Asteroids: Ship rotation and thrust-based movement with screen wrapping
- For Space Invaders: Grid-based enemy movement pattern
- For Air Sea Battle: Rotating turret with angle limits

### Option B: Shooting System
Implement the basic shooting mechanics:
- For Asteroids: Direction-based shooting with moving projectiles
- For Space Invaders: Player shooting with cooldown and enemy destruction
- For Air Sea Battle: Angled projectile firing with physics

### Implementation Guidelines:
1. Create a new Godot project
2. Focus on just the chosen system - don't try to build the entire game
3. Use simple shapes (rectangles, circles) instead of detailed graphics
4. Implement the basic functionality first, then add refinements if time permits

## Starting Code (if needed)

Here's some starter code for common functionality:

### Rotating Turret/Ship (Asteroids/Air Sea Battle)
```gdscript
extends Node2D

export var rotation_speed = 3.0  # Adjust as needed

func _process(delta):
    # Get input for rotation
    var rotation_dir = 0
    if Input.is_action_pressed("ui_right"):
        rotation_dir += 1
    if Input.is_action_pressed("ui_left"):
        rotation_dir -= 1
        
    # Apply rotation
    rotation += rotation_dir * rotation_speed * delta
```

### Grid Movement (Space Invaders)
```gdscript
extends Node2D

export var move_distance = 10
export var move_direction = 1  # 1 for right, -1 for left
export var time_between_moves = 1.0

var move_timer = 0

func _process(delta):
    move_timer += delta
    if move_timer >= time_between_moves:
        move_timer = 0
        move_grid()

func move_grid():
    # Check if any child is at screen edge
    var should_change_direction = false
    for child in get_children():
        if (child.global_position.x < 50 and move_direction < 0) or \
           (child.global_position.x > 590 and move_direction > 0):
            should_change_direction = true
            break
    
    if should_change_direction:
        move_direction *= -1
        position.y += move_distance  # Move down
    else:
        position.x += move_direction * move_distance  # Move sideways
```

## Deliverables
By the end of the lab session, you should have:

1. Written analysis of your chosen game's mechanics
2. A simple Godot project demonstrating one core system from the game

## Bonus Challenge
If you finish early, try implementing a second system and connecting them together.