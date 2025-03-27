# **3D Character Animation in Godot 4: A Complete Tutorial**

Godot 4 introduces powerful 3D animation tools, making it easier than ever to bring characters to life. In this tutorial, we'll cover:

- Setting up a 3D character with a skeleton
- Creating animations using the AnimationPlayer
- Blending animations with AnimationTree
- Controlling animations via code

---

## **Prerequisites**
- Godot 4.0 or later
- A 3D character model (with a skeleton if rigged)
- Basic knowledge of Godot's interface

---

## **Step 1: Importing Your 3D Character**
1. **Prepare your model** (FBX, GLTF, or DAE format recommended).
2. Drag and drop the file into the **FileSystem** panel.
3. Select the imported scene and click **"Instance"** to add it to your main scene.

---

## **Step 2: Setting Up the Skeleton**
If your model has a rig:
1. Select the **Armature/Skeleton** node.
2. Click **"Create Physical Bones"** (optional, for ragdoll physics).
3. Test bone movement by rotating them in the **Editor**.

---

## **Step 3: Creating Animations with AnimationPlayer**
1. Add an **AnimationPlayer** node as a child of your character.
2. Click **"Animation" → "New"** and name it (e.g., "Idle").
3. **Record keyframes**:
   - Enable the **keyframe button** (red circle).
   - Move bones or objects and insert keyframes (right-click → Insert Key).
4. Repeat for other animations (Walk, Run, Jump, etc.).

---

## **Step 4: Using AnimationTree for Advanced Blending**
1. Add an **AnimationTree** node.
2. Assign the **AnimationPlayer** in its properties.
3. Set **Active = true**.
4. Create a **State Machine**:
   - Click **"Edit"** → **"New AnimationNodeStateMachine"**.
   - Add states (Idle, Walk, etc.) and connect them with transitions.
5. Control transitions via parameters (e.g., `blend_position` for blending).

---

## **Step 5: Controlling Animations via Code**
Attach a script to your character and use:

```gdscript
extends CharacterBody3D

@onready var anim_tree = $AnimationTree
@onready var state_machine = anim_tree["parameters/playback"]

func _process(delta):
    var input_dir = Input.get_vector("left", "right", "up", "down")
    var move_dir = Vector3(input_dir.x, 0, input_dir.y).normalized()
    
    if move_dir.length() > 0:
        state_machine.travel("Walk")
        anim_tree.set("parameters/Walk/blend_position", move_dir.length())
    else:
        state_machine.travel("Idle")
```

---

## **Step 6: Fine-Tuning Animations**
- Adjust **transition times** between animations.
- Use **AnimationNodeBlendSpace1D/2D** for smoother blending.
- Add **root motion** (if needed) by enabling **"Root Motion"** in AnimationPlayer.

---

## **Conclusion**
Now your 3D character can animate smoothly in Godot 4! Experiment with:
- Inverse Kinematics (IK) for realistic limb movement
- Animation layers for additive animations (e.g., shooting while running)
- Procedural animation with **BoneAttachment** nodes

For more advanced setups, check out Godot’s [official documentation](https://docs.godotengine.org/).

Happy animating! 🎮