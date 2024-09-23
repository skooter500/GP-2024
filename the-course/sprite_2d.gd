class_name Actor extends Sprite2D 

# Vars
@export var speed:float = 50
@export var rot_speed:float = 100
var s = speed
var rs = rot_speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):

# Sprint/Fast-mode
	if (Input.is_key_pressed(KEY_SHIFT)):
		s = s * 5
		rs = rs * 2


# Movement Input
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - s * delta))
	
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, s * delta))
	
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-s * delta, 0))
	
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(s * delta, 0))

# Rotation Input
	if Input.is_key_pressed(KEY_Q):
		rotate(-deg_to_rad(rs * delta))
	
	if Input.is_key_pressed(KEY_E):
		rotate(deg_to_rad(rs * delta))
