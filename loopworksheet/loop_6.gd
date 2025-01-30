extends Node2D

func _draw():
	var center = get_viewport_rect().size / 2
	var angle = 0
	var radius = 10
	var angle_step = 0.1
	var radius_step = 2
	
	for i in range(100):
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		draw_circle(Vector2(x, y), 2, Color.PINK)
		angle += angle_step
		radius += radius_step
