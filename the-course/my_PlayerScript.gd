class_name Spaceship extends CharacterBody2D

@export var size = 20
@export var line_size = 20
@export var color:Color = Color.GREEN
@onready var radius = size / 2 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	radius = size / 2
	queue_redraw() # make draw happen

func _draw() -> void:
	# Draw the dude's shape
	draw_line(Vector2(-radius, radius), Vector2(0, -radius), color, line_size)
	draw_line(Vector2(radius, radius), Vector2(0, -radius), color, line_size)
	draw_line(Vector2(-radius, radius), Vector2(0, 0), color, line_size)
	draw_line(Vector2(radius, radius), Vector2(0, 0), color, line_size)
	var points = [Vector2(5, -20), Vector2(30, 20), Vector2(30, 40)]
	draw_polygon(points, [Color.GREEN])  # Green triangle
	var points2 = [Vector2(-5, -20), Vector2(-30, 20), Vector2(-30, 40)]
	draw_polygon(points2, [Color.GREEN])  # Green triangle
	var points3 = [Vector2(-10, -20), Vector2(10, -20), Vector2(0, -40)]
	draw_polygon(points3, [Color(0, 1, 0)])  # Green triangle
