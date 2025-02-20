extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_pressed("quit"):
		get_tree().quit()


func _draw():
# Flower 1
	var center = Vector2(100, 100)
	var petal_length = 20
	var petal_width = 20
	var num_petals = 8
	var center_radius = 15
	var stem_length = 100
	
	for i in range(num_petals):
		var angle = i * (2 * PI / num_petals)
		var petal_start = center + Vector2(cos(angle), sin(angle)) * center_radius
		var petal_end = center + Vector2(cos(angle), sin(angle)) * (center_radius + petal_length)
		var stem_end = center + Vector2(0, stem_length)

		draw_line(petal_start, petal_end, Color.YELLOW, petal_width)
		draw_line(center,stem_end, Color(0, 0.5, 0), 10)
	draw_circle(center, center_radius, Color.SADDLE_BROWN)

# Flower 2
	var center2 = Vector2(200, 100)
	var petal_length2 = 37
	var petal_width2 = 10
	var num_petals2 = 20
	var center_radius2 = 15

	for i in range(num_petals2):
		var angle = i * (2 * PI / num_petals2)
		var petal_start2 = center2 + Vector2(cos(angle), sin(angle)) * center_radius2
		var petal_end2 = center2 + Vector2(cos(angle), sin(angle)) * (center_radius2 + petal_length2)
		var stem_end2 = center2 + Vector2(0, stem_length)

		draw_line(petal_start2, petal_end2, Color.HOT_PINK, petal_width2)
		draw_line(center2,stem_end2, Color.WEB_GREEN)
	
	draw_circle(center2, center_radius2, Color.YELLOW)
