extends Node2D

func _draw():
	var screen_width = get_viewport_rect().size.x
	var spacing = screen_width / 10
	var radius = 10
	for i in range(10):
		var x = i * spacing + radius
		var y = get_viewport_rect().size.y / 2
		draw_circle(Vector2(x, y), radius, Color.PINK)
