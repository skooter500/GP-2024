extends Node2D

func _draw() -> void:
	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
