extends Node2D

# when the scene is loaded, assign these variables from the scene
@onready var ufo_spawner = $ufo_spawner
@onready var dude = $dude

var target = 0
var level = 0

func _ready() -> void:
	next_level()


func next_level():
	ufo_spawner.radius = randf_range(200, 400)
	ufo_spawner.count = randi_range(2, 10)
	ufo_spawner.rate  = randf_range(1, 5)
	ufo_spawner.position = dude.position
	ufo_spawner.spawn()	
	level = level + 1
	# next target
	target = target + ufo_spawner.count


func _process(delta):
	# if the dude reaches the target, advance to next level
	if dude.ufo_count == target:
		next_level()
	$CanvasLayer/target.text="target_count: " + str(target)
	$CanvasLayer/level.text="level: " + str(level)
	pass
