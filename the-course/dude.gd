@tool

class_name Dude

extends CharacterBody2D

@export var size = 100
@export var line_size = 2
@export var color:Color = Color.WHITE
@onready var radius = size / 2 

@export var turn_left_input:String
@export var turn_right_input:String
@export var forward_input:String
@export var back_input:String
@export var turn_rate:float=180
@export var speed:float=100

@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D

var can_fire = true

func _draw() -> void:
	draw_line(Vector2(-radius, radius), Vector2(0, -radius), color, line_size)
	draw_line(Vector2(radius, radius), Vector2(0, -radius), color, line_size)
	draw_line(Vector2(-radius, radius), Vector2(0, 0), color, line_size)
	draw_line(Vector2(radius, radius), Vector2(0, 0), color, line_size)

var acceleration:Vector2

func _process(delta: float) -> void:
	radius = size / 2
	queue_redraw()
	
	if ! Engine.is_editor_hint():	
		if Input.is_action_pressed("fire") and can_fire:
			var b = bullet_scene.instantiate()
			b.global_position = bullet_spawn.global_position
			b.global_rotation = bullet_spawn.global_rotation
			get_tree().get_root().add_child(b) 
			can_fire = false
			$Timer.start()
	pass
	
func _physics_process(delta: float) -> void:
	if ! Engine.is_editor_hint():	
		var l = Input.get_axis(turn_left_input, turn_right_input)
		rotate(l * delta * deg_to_rad(turn_rate))
		
		var m = Input.get_axis(forward_input, back_input)
		acceleration = transform.y * m * speed
		velocity = velocity + acceleration * delta	
		move_and_slide()
		velocity = velocity * 0.99
		
	
func _ready() -> void:
	pass
