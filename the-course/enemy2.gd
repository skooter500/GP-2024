extends Node2D

func _draw():
	# Draw a circle for the enemy's body
	draw_circle(Vector2(0, 0), 20, Color(1, 0, 0))  # Red circle
	# Draw a triangle for the enemy's "head"
	var points = [Vector2(-10, -20), Vector2(10, -20), Vector2(0, -40)]
	draw_polygon(points, [Color(0, 1, 0)])  # Green triangle
