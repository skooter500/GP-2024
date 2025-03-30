extends Node2D

var n = 1
var i = 10

func _ready() -> void:
	
	for n in 11:
		print(n)
	while i > 0:
		print(i)
		i -= 1
	for x in range(3):
		var row = ""
		for y in range(3):
			row += "(" + str(x) + "," + str(y) + ")"
		print(row)

func _draw() -> void:
	var screen_width = get_viewport_rect().size.x
	var screen_height = get_viewport_rect().size.y
	var num_lines = 10
	var spacing_x = screen_width / (num_lines - 1)  
	var spacing_y = screen_height / (num_lines - 1)  

	
	for i in range(num_lines):
		var y = i * spacing_y
		draw_line(Vector2(0, y), Vector2(screen_width, y), Color.RED, 2)

	
	for i in range(num_lines):
		var x = i * spacing_x
		draw_line(Vector2(x, 0), Vector2(x, screen_height), Color.BLUE, 2)

	
	var start_x = 50
	var y_position = screen_height / 2 
	var base_radius = 10
	for i in range(10):
		var radius = base_radius + (i * 5)  
		var x_position = start_x + (i * 60)
		draw_circle(Vector2(x_position, y_position), radius, Color.GREEN)

	
	var center = Vector2(screen_width / 2, screen_height / 2)  
	var angle_step = 0.2 
	var max_radius = 200  
	var spiral_steps = 100  

	for i in range(spiral_steps):
		var angle = i * angle_step  
		var radius = i * 2 
		if radius > max_radius:
			break  
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		draw_circle(Vector2(x, y), 5, Color.YELLOW) 
