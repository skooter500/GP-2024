extends Sprite2D 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
@export var speed:float = 20
@export var rot_speed:float = 20



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float): 
	#translate(Vector2(0,speed))
	#rotate(de(rot_speed * delta))
	#void rotate (radians: float)speed * delta))
	#global_translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - speed * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, speed * delta))


pass
