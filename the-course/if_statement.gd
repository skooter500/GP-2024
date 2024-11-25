extends Node2D
var i = 0


func _draw() -> void:
	i += 1
	print ("draw called")
	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	var p = get_viewport().get_mouse_position()
	if p.x  < 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
