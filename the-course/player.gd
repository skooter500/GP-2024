extends CharacterBody2D


@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D
@onready var shoot_timer: Timer = $shoot_timer

const SPEED = 500.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

var shooting = false

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	

	
	if Input.is_action_pressed("fire") and shooting == false:
		shooting = true
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		b.global_rotation = bullet_spawn_point.global_rotation
		get_parent().add_child(b)
		shoot_timer.start()
	
	move_and_slide()


func _on_timer_timeout() -> void:
	shooting = false
