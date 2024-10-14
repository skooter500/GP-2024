extends CharacterBody2D


const SPEED = 300.0
#const JUMP_VELOCITY = -400.0
const ROT_SPEED = 360

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D 

var can_fire = true


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var direction_y := Input.get_axis("move_forwards", "move_backwards")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	var turn := Input.get_axis("turn_left", "turn_right")
	var rot = deg_to_rad(ROT_SPEED * turn * delta)
	rotate(rot)
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		b.global_rotation = bullet_spawn_point.global_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
		
	
	

	move_and_slide()


func _on_timer_timeout() -> void:
	can_fire = true
	pass # Replace with function body.
