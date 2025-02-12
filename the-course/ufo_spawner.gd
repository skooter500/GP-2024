extends Marker2D

@export var ufo_scene:PackedScene

@export var radius:float = 200
@export var count:int = 20

func spawn():
	var theta_inc = TAU / float(count)
	for i in count:
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		var ufo = ufo_scene.instantiate()
		ufo.position = Vector2(x, y)
		add_child(ufo)
		await get_tree().create_timer(1.0).timeout
		
func _ready() -> void:
	spawn() 
