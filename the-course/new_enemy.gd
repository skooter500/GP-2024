extends CharacterBody2D
var speed = 50
@onready var Spaceman = target_pos
var target_pos: Vector2
var start_pos:Vector2
@export var explosion:PackedScene

func _ready() -> void:
	target_pos = Spaceman
	target_pos = global_position
	start_pos = global_position

func move_up():
	position.y = -50

func move_down():
	position.y = 50

func move_left():
	position.x = -50

func move_right():
	position.x = 50

#var choose = [move_down(),move_up(), move_right(), move_left()]

func _physics_process(delta):
	if target_pos.y < start_pos.y:
		velocity.y = 50
	if target_pos.y > start_pos.y:
		velocity.y = -50
	if target_pos.x < start_pos.x:
		velocity.x = -50
	if target_pos.x > start_pos.x:
		velocity.x = 50
	move_and_slide()
