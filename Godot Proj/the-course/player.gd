extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

var can_shoot = true
var can_boost = false

@export var SPEED = 250.0
var SPEEDBOOST = 700.0
const shoot_speed = 5
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)

	var f = Input.get_axis("move_backwards", "move_forwards")
	var vel = transform.y * f * SPEED
	velocity = vel
	
	if Input.is_action_pressed("boost"):
		var new_vel = transform.y * f * SPEEDBOOST
		velocity = new_vel
	
	if Input.is_action_pressed("fire") and can_shoot:
		var b = bullet_scene.instantiate()
		
		can_shoot = false
		b.global_rotation = bullet_spawn_point.global_rotation
		b.global_position = bullet_spawn_point.global_position
		get_parent().add_child(b)
		$Timer.start()
	
	move_and_slide()

func _on_timer_timeout():
	can_shoot = true
	pass
