# Loop-Worksheet 30/01/2025
extends Node2D

func _ready() -> void:
	draw_grid()
	enemy_respawn()
	pass


func _process(delta: float) -> void:
	pass

# While Loops
func enemy_respawn() -> void:
	var respawn_time = 5
	while respawn_time > 0:
		print("Enemy respawning;", respawn_time)
		respawn_time -= 1
		await(get_tree().create_timer(1.0))
	print("Enemy respawned!")


func enemy_spawn() -> void:
	var enemies_spawned = 0
	var max_enemies = 5
	while enemies_spawned < max_enemies:
		enemy_spawn()
		enemies_spawned += 1
		print("Enemy spawned: ", enemies_spawned)

# Nested Loops
func draw_grid() -> void:
	for x in range(1):
		for y in range(11):
			var tile = Sprite2D.new()
			tile.texture = preload("res://sprites/troll.png")
			tile.position = Vector2(x * 64, y * 64)
			add_child(tile)

# Draw functions // Circles/Spiral
func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.AQUA, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BEIGE)
	draw_circle(Vector2(1000, 250), 100, Color.BLUE_VIOLET, true)
	
	var v = get_viewport_rect()
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.GREEN_YELLOW)
	
	
# For Loops
	for i in range(10):
		print(i)
	
	for i in range(10, -1, -1):
		print(i)
	
	var basket = ["apple", "banana", "orange"]
	for f in basket:
		print(f)
	
	for i in range(basket.size()):
		print(basket[i])
	
	# Grid lines
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
	var l = s.y / num_lines
	for i in range(num_lines):
		# Vertical
		draw_line(Vector2(i * w, i * l), Vector2(i * w, s.y), Color.RED)
		# Horizontal
		draw_line(Vector2(0, i * l), Vector2(s.x, i * l), Color.HOT_PINK)
	
	var num_circles = 5
	var circle_radius = 50
	var colors = [Color.GOLD, Color.GREEN, Color.BLUE, Color.RED, Color.PINK]
	for i in range(num_circles):
		var radius = circle_radius * (1 - float(i) / num_circles)
		draw_circle(Vector2(500, 500), radius, colors[i])
	
	var num_dots = 500
	var dot_radius = 50
	for i in range(num_dots):
		var radius = dot_radius * (1 / num_dots)


# Totally custom spiral code // use for future reference in projects
	var center = Vector2(500, 500)  # Center of the spiral
	var angle = 0.0                 # Starting angle
	var radius = 0.0                # Starting radius
	var angle_step = 0.1            # Angle increment per step
	var radius_step = 2.0           # Radius increment per step
	var prev_point = center         # Previous point for line drawing
	
	for i in range(250):  # Number of points in the spiral
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		var current_point = Vector2(x, y)
		
		draw_line(prev_point, current_point, Color.WHITE, 1)  # Draw a line
		prev_point = current_point  # Update the previous point
		
		angle += angle_step  # Increase the angle
		radius += radius_step  # Increase the radius
