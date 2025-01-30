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
	var spacing_x = screen_width / (num_lines - 1)  # Space for vertical lines
	var spacing_y = screen_height / (num_lines - 1)  # Space for horizontal lines

	# Draw horizontal lines in RED
	for i in range(num_lines):
		var y = i * spacing_y
		draw_line(Vector2(0, y), Vector2(screen_width, y), Color.RED, 2)

	# Draw vertical lines in BLUE
	for i in range(num_lines):
		var x = i * spacing_x
		draw_line(Vector2(x, 0), Vector2(x, screen_height), Color.BLUE, 2)
