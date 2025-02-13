extends Node2D

@onready var ufo_spawner = $ufo_spawner
@onready var dude = $dude

func _process(delta):
	if dude.ufo_count % 5 == 0:
		ufo_spawner.radius = randf_range(200, 500)
		ufo_spawner.count = randi_range(2, 15)
		ufo_spawner.rate  = randf_range(1, 5)
		ufo_spawner.position = dude.position
		ufo_spawner.spawn()		
		dude.ufo_count = dude.ufo_count + 1 
	pass
