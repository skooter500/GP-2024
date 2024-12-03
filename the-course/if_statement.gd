extends Node2D

<<<<<<< HEAD
var i = 1

func _draw() -> void:
	print("draw called " + str(i))
	var r = get_viewport_rect()
	var h = r.size.x / 2
	var w = r.size.y / 2
	
	var p = get_viewport().get_mouse_position()
	print(p)
	if p.x < h and p.y < w:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE, true, 10, true)
		draw_rect(Rect2(h, w, h, r.size.y), Color.YELLOW, true, 10, true)
		draw_rect(Rect2(0, w, h, r.size.y), Color.GREEN, true, 10, true)
	elif p.x > h and p.y < w:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.GREEN, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(h, w, h, r.size.y), Color.BLUE, true, 10, true)
		draw_rect(Rect2(0, w, h, r.size.y), Color.YELLOW, true, 10, true)
	elif p.x > h and p.y > w:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.YELLOW, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.GREEN, true, 10, true)
		draw_rect(Rect2(h, w, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(0, w, h, r.size.y), Color.BLUE, true, 10, true)
	elif p.x < h and p.y > w:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.BLUE, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.YELLOW, true, 10, true)
		draw_rect(Rect2(h, w, h, r.size.y), Color.GREEN, true, 10, true)
		draw_rect(Rect2(0, w, h, r.size.y), Color.RED, true, 10, true)
	# ==p
	# <
	# >
	# <=
	# >=
	# && and
	# || or
	# not

	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
