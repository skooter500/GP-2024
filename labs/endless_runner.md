### **2-Hour Lab Exercise: Creating a 3D Endless Runner in Godot**

This lab will guide you through creating a simple 3D endless runner game in Godot. The game will include spawning platforms, a player character (capsule or Mixamo animated character), coins, and obstacles. By the end of the lab, you will have a functional prototype of an endless runner.

---

### **Learning Objectives**
1. Understand basic 3D scene setup in Godot.
2. Learn how to spawn and move objects dynamically.
3. Implement player controls (movement and jumping).
4. Add collectibles (coins) and obstacles.
5. (Optional) Integrate a Mixamo animated character.


### **Step-by-Step Instructions**

(Or figure it out yourself!)

---

#### **Part 1: Setting Up the Scene (30 minutes)**

1. **Create a New Project**:
   - Open Godot and create a new 3D project.
   - Save the project as "EndlessRunner".

2. **Set Up the Scene**:
   - Add a `CharacterBody3D` node as the root node and name it `Player`.
   - Add a `CollisionShape3D` to the `Player` and assign a `CapsuleShape3D` to it.
   - Add a `MeshInstance3D` to the `Player` and assign a capsule mesh (or use the Mixamo character for advanced students).

3. **Add a Camera**:
   - Add a `Camera3D` node as a child of the `Player`.
   - Position the camera behind and slightly above the player (e.g., `Transform: Position (0, 2, 5)`).

4. **Add a Ground**:
   - Create a `StaticBody3D` node and name it `Ground`.
   - Add a `CollisionShape3D` and assign a `BoxShape3D` to it.
   - Scale the ground to cover the area where platforms will spawn.

---

#### **Part 2: Player Movement and Jumping (30 minutes)**

1. **Player Script**:
   - Attach a script to the `Player` node.
   - Add variables for speed, gravity, and jump force:
     ```gdscript
     extends CharacterBody3D

     @export var speed: float = 10.0
     @export var gravity: float = -24.8
     @export var jump_force: float = 10.0

     var velocity: Vector3 = Vector3.ZERO

     func _physics_process(delta: float) -> void:
         velocity.y += gravity * delta
         if is_on_floor() and Input.is_action_just_pressed("ui_select"):
             velocity.y = jump_force
         velocity.z = speed
         move_and_slide()
     ```

2. **Input Mapping**:
   - Go to `Project > Project Settings > Input Map`.
   - Add a new action called `ui_select` and map it to the spacebar.

3. **Test the Player**:
   - Run the scene and ensure the player moves forward and can jump.

---

#### **Part 3: Platform Spawning (30 minutes)**

1. **Platform Scene**:
   - Create a new scene with a `StaticBody3D` as the root node and name it `Platform`.
   - Add a `CollisionShape3D` and a `MeshInstance3D` for the platform model.
   - Save the scene as `Platform.tscn`.

2. **Platform Spawner Script**:
   - Create a new `Node3D` in the main scene and name it `PlatformSpawner`.
   - Attach a script to it:
     ```gdscript
     extends Node3D

     @export var platform_scene: PackedScene
     @export var spawn_distance: float = 20.0
     @export var platform_speed: float = 10.0

     func _ready() -> void:
         spawn_platform()

     func spawn_platform() -> void:
         var platform = platform_scene.instantiate()
         add_child(platform)
         platform.position.z = spawn_distance

     func _process(delta: float) -> void:
         for platform in get_children():
             platform.position.z -= platform_speed * delta
             if platform.position.z < -10:
                 platform.queue_free()
                 spawn_platform()
     ```

3. **Assign Platform Scene**:
   - In the `PlatformSpawner` inspector, assign the `Platform.tscn` to the `platform_scene` variable.

4. **Test Platform Spawning**:
   - Run the scene and ensure platforms spawn and move towards the player.

---

#### **Part 4: Coins and Obstacles (20 minutes)**

1. **Coin Scene**:
   - Create a new scene with a `Area3D` as the root node and name it `Coin`.
   - Add a `CollisionShape3D` and a `MeshInstance3D` for the coin model.
   - Attach a script to detect when the player collects the coin:
     ```gdscript
     extends Area3D

     func _on_body_entered(body: Node) -> void:
         if body.name == "Player":
             queue_free()
             # Add score logic here
     ```

2. **Obstacle Scene**:
   - Create a new scene with a `StaticBody3D` as the root node and name it `Obstacle`.
   - Add a `CollisionShape3D` and a `MeshInstance3D` for the obstacle model.

3. **Add Coins and Obstacles to Platforms**:
   - Open `Platform.tscn` and add instances of `Coin` and `Obstacle` as children.
   - Position them randomly on the platform.

---

#### **Part 5: Advanced Exercise (Optional, 10 minutes)**

1. **Mixamo Character**:
   - Replace the capsule with a Mixamo animated character.
   - Import the character and animations into Godot.
   - Use an `AnimationPlayer` node to play the running and jumping animations.

2. **Animation Logic**:
   - Modify the player script to trigger animations based on movement and jumping.

---

### **Wrap-Up and Testing**
- Have students test their games and share screenshots or videos of their progress.
- Encourage them to experiment with platform spacing, coin placement, and obstacle difficulty.

---

### **Deliverables**
1. A functional 3D endless runner with:
   - Player movement and jumping.
   - Spawning platforms.
   - Collectible coins and obstacles.
2. (Optional) Animated Mixamo character.

---

Commit to your repo or upload to britespace