extends Node2D
	
func _draw():
		var screen_width = get_viewport_rect().size.x
		var spacing = screen_width / 10
		for i in range(10):
			var x = i * spacing
			draw_line(Vector2(x, 0), Vector2(x, get_viewport_rect().size.y), Color.PINK, 1.0)

for i in range(100):
	draw_line(Vector2(0, gap * i), Vector2(v.size.x, v.size.y - i * gap), Color.PALE_VIOLET_RED)
