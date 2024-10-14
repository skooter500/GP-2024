extends CharacterBody2D

@export var speed = 400
@export var rot_speed = 1.5

var rot_dire = 0

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
