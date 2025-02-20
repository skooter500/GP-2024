# Lab Exercise: Designing an Enemy with a Movement Pattern Using Tweens in Godot 4

## Objective
In this lab, you will design an enemy for a 2D shooter game that uses Tweens to create a dynamic and visually interesting movement pattern. The enemy will be procedurally drawn using the `_draw` function, and its movement will be controlled using Godot's `Tween` system.

---

## Learning Outcomes
By the end of this lab, you will:
1. Understand how to use the `_draw` function to procedurally draw characters.
2. Learn how to create and configure Tweens for smooth animations.
3. Design a custom enemy movement pattern using Tweens.
4. Gain experience in integrating procedural drawing with animation systems.

---

## Lab Instructions

### Step 1: Set Up the Project
1. Create a new 2D project in Godot 4.
2. Add a `Node2D` scene and name it `Enemy`.
3. Attach a script to the `Enemy` node.

---

### Step 2: Procedurally Draw the Enemy
1. In the `Enemy` script, override the `_draw` function to procedurally draw the enemy. For example, you can draw a simple shape like a circle or a triangle.

```gdscript
extends Node2D

func _draw():
    # Draw a circle for the enemy's body
    draw_circle(Vector2(0, 0), 20, Color(1, 0, 0))  # Red circle
    # Draw a triangle for the enemy's "head"
    var points = [Vector2(-10, -20), Vector2(10, -20), Vector2(0, -40)]
    draw_polygon(points, [Color(0, 1, 0)])  # Green triangle
```

2. Run the scene to ensure the enemy is drawn correctly.

---

### Step 3: Add Movement Using Tweens
1. Create a Tween in the `_ready` function to animate the enemy's movement.
2. Design a movement pattern for the enemy. For example:
   - Move in a square pattern.
   - Move in a sine wave pattern.
   - Move in a circular pattern.

Here’s an example of a square movement pattern:

```gdscript
extends Node2D

var tween: Tween

func _ready():
    tween = create_tween()
    tween.set_loops(0)  # Loop indefinitely

    # Square movement pattern
    tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)  # Right
    tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)  # Down
    tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0)  # Left
    tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)  # Up
```

3. Run the scene to see the enemy move in the designed pattern.

---

### Step 4: Customize the Movement Pattern
1. Experiment with different movement patterns by modifying the Tween properties. For example:
   - Use `set_trans` and `set_ease` to change the transition and easing types.
   - Add delays between movements using `tween.tween_interval(0.5)`.
   - Combine multiple patterns (e.g., move in a square, then in a circle).

Here’s an example of a sine wave pattern:

```gdscript
func _ready():
    tween = create_tween()
    tween.set_loops(0)

    for i in range(0, 360, 10):
        var x = i
        var y = sin(deg2rad(i)) * 50  # Sine wave amplitude
        tween.tween_property(self, "position", Vector2(x, y + position.y), 0.1)
```

---

### Step 5: Add Rotation or Scaling (Optional)
1. Enhance the enemy's movement by adding rotation or scaling animations. For example:
   - Rotate the enemy as it moves.
   - Scale the enemy up and down to create a "pulsing" effect.

```gdscript
func _ready():
    tween = create_tween()
    tween.set_loops(0)

    # Move in a square pattern
    tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)
    tween.tween_property(self, "rotation", rotation + PI / 2, 1.0)  # Rotate 90 degrees
    tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)
    tween.tween_property(self, "rotation", rotation + PI / 2, 1.0)  # Rotate 90 degrees
    tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0)
    tween.tween_property(self, "rotation", rotation + PI / 2, 1.0)  # Rotate 90 degrees
    tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)
    tween.tween_property(self, "rotation", rotation + PI / 2, 1.0)  # Rotate 90 degrees
```

---

### Step 6: Test and Refine
1. Playtest the enemy's movement and adjust the Tween parameters to make the pattern feel smooth and engaging.
2. Experiment with different shapes and colors in the `_draw` function to make the enemy visually distinct.

---

### Step 7: Challenge (Optional)
1. Create a second enemy with a different movement pattern and visual design.
2. Combine multiple enemies in a single scene and observe how their patterns interact.

---

## Deliverables
1. A Godot scene with an enemy that uses the `_draw` function for procedural drawing.
2. A Tween-based movement pattern for the enemy.
3. (Optional) A second enemy with a unique movement pattern and design.

---

## Evaluation Criteria
- **Functionality**: The enemy moves according to the designed pattern using Tweens.
- **Creativity**: The movement pattern is unique and visually interesting.
- **Code Quality**: The code is clean, well-commented, and easy to understand.
- **Visual Design**: The enemy is procedurally drawn and visually distinct.

---

## Conclusion
This lab exercise introduces you to the power of Tweens in Godot 4 for creating dynamic movement patterns. By combining procedural drawing with Tween animations, you can create unique and engaging enemies for your 2D shooter game. Experiment with different patterns and designs to make your game stand out!