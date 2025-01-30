extends Node2D

func _draw():
	var screen_height = get_viewport_rect().size.y
	var spacing = screen_height / 10
	for i in range(10):
		var y = i * spacing
		draw_line(Vector2(0, y), Vector2(get_viewport_rect().size.x, y), Color.PINK, 1.0)
