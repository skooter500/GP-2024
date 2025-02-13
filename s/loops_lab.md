### GDScript Loops and Procedural Patterns Worksheet
**Estimated Time:** 2 hours  
**Objective:** Learn how to use loops in GDScript to create procedural patterns using the `draw` function.  
**Prerequisites:** Basic understanding of GDScript, Godot Engine, and familiarity with coordinate systems.

---

### Part 1: Understanding Loops in GDScript (30 minutes)

#### Exercise 1: Basic Loops
1. **For Loop**  
   Write a `for` loop that prints numbers from 1 to 10 in the output console.

   ```gdscript
   for i in range(1, 11):
       print(i)
   ```

2. **While Loop**  
   Write a `while` loop that prints numbers from 10 to 1 in the output console.

   ```gdscript
   var i = 10
   while i > 0:
       print(i)
       i -= 1
   ```

3. **Nested Loops**  
   Write a nested loop (a loop inside another loop) that prints a 3x3 grid of coordinates like this:
   ```
   (0, 0) (0, 1) (0, 2)
   (1, 0) (1, 1) (1, 2)
   (2, 0) (2, 1) (2, 2)
   ```

   ```gdscript
   for x in range(3):
       for y in range(3):
           print("(%d, %d)" % [x, y])
   ```

---

### Part 2: Drawing with Loops (1 hour)

#### Exercise 2: Drawing Lines with a Loop
1. **Horizontal Lines**  
   Use the `draw_line` function inside a `for` loop to draw 10 horizontal lines across the screen. Space them evenly.

   ```gdscript
   extends Node2D

   func _draw():
       var screen_height = get_viewport_rect().size.y
       var spacing = screen_height / 10
       for i in range(10):
           var y = i * spacing
           draw_line(Vector2(0, y), Vector2(get_viewport_rect().size.x, y), Color.white, 1.0)
   ```

2. **Vertical Lines**  
   Modify the code to draw 10 vertical lines instead of horizontal lines.

   ```gdscript
   extends Node2D

   func _draw():
       var screen_width = get_viewport_rect().size.x
       var spacing = screen_width / 10
       for i in range(10):
           var x = i * spacing
           draw_line(Vector2(x, 0), Vector2(x, get_viewport_rect().size.y), Color.white, 1.0)
   ```

3. **Grid Pattern**  
   Combine horizontal and vertical lines to create a grid pattern. Use nested loops to draw the grid.

   ```gdscript
   extends Node2D

   func _draw():
       var screen_size = get_viewport_rect().size
       var h_spacing = screen_size.y / 10
       var v_spacing = screen_size.x / 10

       for i in range(11):
           # Horizontal lines
           draw_line(Vector2(0, i * h_spacing), Vector2(screen_size.x, i * h_spacing), Color.white, 1.0)
           # Vertical lines
           draw_line(Vector2(i * v_spacing, 0), Vector2(i * v_spacing, screen_size.y), Color.white, 1.0)
   ```

---

### Part 3: Procedural Patterns (30 minutes)

#### Exercise 3: Drawing Circles in a Pattern
1. **Circle Pattern**  
   Use a loop to draw 10 circles in a row. Space them evenly and make their radius increase by 5 pixels each time.

   ```gdscript
   extends Node2D

   func _draw():
       var screen_width = get_viewport_rect().size.x
       var spacing = screen_width / 10
       var radius = 10
       for i in range(10):
           var x = i * spacing + radius
           var y = get_viewport_rect().size.y / 2
           draw_circle(Vector2(x, y), radius, Color.white)
           radius += 5
   ```

2. **Spiral Pattern**  
   Use a loop to draw a spiral pattern. Hint: Use polar coordinates (angle and radius) to calculate the position of each point.

   ```gdscript
   extends Node2D

   func _draw():
       var center = get_viewport_rect().size / 2
       var angle = 0
       var radius = 10
       var angle_step = 0.1
       var radius_step = 2

       for i in range(100):
           var x = center.x + radius * cos(angle)
           var y = center.y + radius * sin(angle)
           draw_circle(Vector2(x, y), 2, Color.white)
           angle += angle_step
           radius += radius_step
   ```

---

### Part 4: Challenge (Optional, 30 minutes)

#### Exercise 4: Procedural Art
1. **Custom Pattern**  
   Create your own procedural pattern using loops and the `draw` functions. Experiment with shapes, colors, and spacing. For example:
   - Draw concentric circles.
   - Draw a checkerboard pattern.
   - Draw a star pattern.

   ```gdscript
   extends Node2D

   func _draw():
       var center = get_viewport_rect().size / 2
       var max_radius = min(center.x, center.y)
       var radius_step = 10

       for radius in range(0, max_radius, radius_step):
           draw_circle(center, radius, Color(randf(), randf(), randf()))
   ```

---

### Submission
- Save your scripts and scenes in a Godot project.
- Export your project or take screenshots of your patterns.
- Write a short reflection on what you learned about loops and procedural drawing.

---

**End of Worksheet**  
Good luck, and have fun creating procedural art with loops in GDScript! 🎨