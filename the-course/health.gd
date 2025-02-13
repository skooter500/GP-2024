# Run in editor
@tool

# Make a class called Dude
class_name Health

# Subclass of CharacterBody2D. We use CharacterBody2D to create player characters, bullets and enemies
extends CharacterBody2D

@export var size = 100
@export var line_size = 3
@export var color:Color = Color.WHITE
@onready var radius = size / 2 

var rot_speed:float = 60

var move_dir:Vector2
var move_speed = 20

func _ready():
	move_dir = Vector2(randf_range(-1, 1), randf_range(-1, 1))
	move_dir = move_dir.normalized()

func _draw():	
	var r = Rect2(-radius, -radius, size, size) 
	draw_rect(r, Color.WHITE, false, line_size)
	draw_line(Vector2(0, -radius), Vector2(0, radius), Color.WHITE, line_size) 
	draw_line(Vector2(-radius, 0), Vector2(radius, 0), Color.WHITE, line_size) 
	
func _process(delta):
	queue_redraw()
	pass	

func _physics_process(delta: float) -> void:
	if ! Engine.is_editor_hint():	
		# rotate(deg_to_rad(rot_speed) * delta)
		# velocity = move_dir * move_speed
		# move_and_slide()
		pass
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("body")
	pass # Replace with function body.
