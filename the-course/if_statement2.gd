extends Node2D

@export var speed = 100

var r = get_viewport_rect()
var p = get_viewport().get_mouse_position()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x += speed * delta + p
	global_position.y += speed * delta + p
	pass
