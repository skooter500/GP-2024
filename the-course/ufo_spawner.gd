extends Marker2D

@export var ufo_scene:PackedScene

@export var radius:float = 200
@export var count:int = 20

@export var rate:int = 10

func spawn():
	print("begin spawning")
	var theta_inc = TAU / float(count)
	for i in count:
		await get_tree().create_timer(1 / float(rate)).timeout
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = - cos(theta) * radius
		var ufo = ufo_scene.instantiate()
		ufo.position = Vector2(x, y)		
		add_child(ufo)
		
		
func _ready() -> void:
	spawn()
	pass 
