extends MeshInstance3D

@export var speed:float 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var f:float = input.get_axis("move_backwards", "move_forwards")
	print(f)
	global_position.x += speed * delta * f
	pass
