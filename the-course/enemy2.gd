extends Node2D

var tween: Tween

func _ready():
	tween = create_tween()
	tween.set_loops(0)  # Loop indefinitely

	# Square movement pattern
	tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)  # Right
	tween.tween_property(self, "position", position + Vector2(0, 200), 1.0)  # Down
	tween.tween_property(self, "position", position + Vector2(-200, 0), 1.0)  # Left
	tween.tween_property(self, "position", position + Vector2(0, -200), 1.0)  # Up

func _draw():
	# Draw a circle for the enemy's body
	draw_circle(Vector2(0, 0), 20, Color(1, 0, 0))  # Red circle
	# Draw a triangle for the enemy's "head"
	var points = [Vector2(-10, -20), Vector2(10, -20), Vector2(0, -40)]
	draw_polygon(points, [Color(0, 1, 0)])  # Green triangle
