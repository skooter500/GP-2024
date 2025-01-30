extends Node2D

func _draw():
	var screen_size = get_viewport_rect().size
	var h_spacing = screen_size.y / 10
	var v_spacing = screen_size.x / 10
	
	for i in range(11):
		draw_line(Vector2(0, i * h_spacing), Vector2(screen_size.x, i * h_spacing), Color.PINK, 1.0)
		draw_line(Vector2(i * v_spacing, 0), Vector2(i * v_spacing, screen_size.y), Color.PINK, 1.0)
