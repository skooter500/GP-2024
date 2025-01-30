# Tutorial: Using Loops in GDScript for Godot 4

GDScript is a powerful, Python-like scripting language used in Godot Engine for game development. Loops are essential for controlling repetitive tasks, iterating through data, and managing game logic. In this tutorial, we’ll explore how to use loops in GDScript and provide practical examples of their use in game development.

---

## Types of Loops in GDScript

GDScript supports three main types of loops:

1. **`for` Loop**: Iterates over a range, array, or dictionary.
2. **`while` Loop**: Repeats a block of code while a condition is true.
3. **`match` Statement**: Similar to a switch-case statement, used for pattern matching (not a loop, but useful for control flow).

Let’s dive into each type with examples.

---

## 1. `for` Loop

The `for` loop is used to iterate over a sequence, such as a range of numbers, an array, or a dictionary.

### Syntax:
```gdscript
for variable in sequence:
    # Code to execute
```

### Example 1: Iterating Over a Range
```gdscript
for i in range(5):
    print(i)  # Output: 0, 1, 2, 3, 4
```

### Example 2: Iterating Over an Array
```gdscript
var fruits = ["Apple", "Banana", "Cherry"]
for fruit in fruits:
    print(fruit)  # Output: Apple, Banana, Cherry
```

### Example 3: Iterating Over a Dictionary
```gdscript
var player_stats = {"health": 100, "mana": 50, "stamina": 75}
for key in player_stats:
    print(key, ":", player_stats[key])  # Output: health: 100, mana: 50, stamina: 75
```

---

## 2. `while` Loop

The `while` loop repeats a block of code as long as a condition is true.

### Syntax:
```gdscript
while condition:
    # Code to execute
```

### Example 1: Countdown Timer
```gdscript
var time_left = 10
while time_left > 0:
    print("Time left: ", time_left)
    time_left -= 1
    yield(get_tree().create_timer(1.0), "timeout")  # Wait 1 second
print("Time's up!")
```

### Example 2: Spawning Enemies Until a Limit
```gdscript
var enemies_spawned = 0
var max_enemies = 5
while enemies_spawned < max_enemies:
    spawn_enemy()
    enemies_spawned += 1
    print("Enemy spawned: ", enemies_spawned)
```

---

## 3. `match` Statement

The `match` statement is used for pattern matching and is particularly useful for handling multiple conditions.

### Syntax:
```gdscript
match variable:
    pattern1:
        # Code to execute
    pattern2:
        # Code to execute
    _:
        # Default case
```

### Example: Handling Player Input
```gdscript
var input = "jump"
match input:
    "jump":
        print("Player jumps!")
    "attack":
        print("Player attacks!")
    "defend":
        print("Player defends!")
    _:
        print("Unknown input")
```

---

## Practical Examples in Game Development

### Example 1: Iterating Through All Children of a Node
```gdscript
# Disable all child nodes (e.g., hiding UI elements)
for child in get_children():
    child.visible = false
```

### Example 2: Creating a Grid of Tiles
```gdscript
# Create a 5x5 grid of tiles
for x in range(5):
    for y in range(5):
        var tile = Sprite2D.new()
        tile.position = Vector2(x * 64, y * 64)
        add_child(tile)
```

### Example 3: Checking for Collisions in a Group
```gdscript
# Check if any enemy is within a certain range
var enemies = get_tree().get_nodes_in_group("enemies")
for enemy in enemies:
    if enemy.position.distance_to(player.position) < 100:
        print("Enemy is too close!")
```

### Example 4: Infinite Spawner with `while` Loop
```gdscript
# Spawn enemies infinitely with a delay
while true:
    spawn_enemy()
    yield(get_tree().create_timer(2.0), "timeout")  # Wait 2 seconds
```

---

## Tips for Using Loops in Game Development

1. **Avoid Infinite Loops**: Always ensure your `while` loops have an exit condition unless you intentionally want an infinite loop.
2. **Optimize Performance**: Be cautious when using loops in the `_process()` or `_physics_process()` functions, as they run every frame.
3. **Use `break` and `continue`**:
   - `break`: Exit the loop immediately.
   - `continue`: Skip the rest of the loop and move to the next iteration.

Example:
```gdscript
for i in range(10):
    if i == 5:
        break  # Exit the loop at i = 5
    if i % 2 == 0:
        continue  # Skip even numbers
    print(i)  # Output: 1, 3
```

---

## Conclusion

Loops are a fundamental part of GDScript and game development. Whether you’re iterating through data, managing game logic, or creating dynamic content, mastering loops will help you write efficient and effective code. Experiment with the examples provided and adapt them to your own projects!

Happy coding in Godot 4! 🚀