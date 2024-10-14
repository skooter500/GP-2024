extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



var speed:float = 250
var rot_speed:float = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#rotate(deg_to_rad(rot_speed * delta))
	#translate(Vector2(10, speed * delta)) 
	
	#global_translate(Vector2(10, speed * delta))
	var s = speed
	var rs = rot_speed

	if Input.is_key_pressed(KEY_UP):
		position -= linear_velocity * speed * delta

	if Input.is_key_pressed(KEY_LEFT):
		rotate(deg_to_rad(-rot_speed * delta))
		
	if Input.is_key_pressed(KEY_RIGHT):
		rotate(deg_to_rad(rot_speed * delta))
	
	pass
