extends Node2D

var i = 0

func _draw() -> void:
	i = 1
	var p = get_viewport().get_mouse_position()
	var r = get_viewport_rect()
	var h = r.size.x / 2 #have way mark
	var l = r.size.y / 2
	
	#sets base colours 
	draw_rect(Rect2(0, 0, h, l), Color.PINK, true)
	draw_rect(Rect2(h, 0, h, l), Color.DEEP_PINK, true)
	draw_rect(Rect2(h, l, h, l), Color.MEDIUM_PURPLE, true)
	draw_rect(Rect2(0, l, h, l), Color.REBECCA_PURPLE, true)
	
	if p.x < h and p.y < l:
		draw_rect(Rect2(h, 0, h, l), Color.HOT_PINK, true)
		
	elif p.x > h and p.y < l:
		draw_rect(Rect2(0, 0, h, l), Color.PEACH_PUFF, true)
		
	
	elif p.x < h and p.y > l:
		draw_rect(Rect2(0, l, h, l), Color.PURPLE, true)
		
		
	elif p.x > h and p.y > l:
		draw_rect(Rect2(h, l, h, l), Color.PALE_TURQUOISE, true)
		
	
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
