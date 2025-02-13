extends Node2D

@onready var ufo_spawner = $ufo_spawner
@onready var dude = $dude

var target = 0
var level = 0

func _ready() -> void:
	next_level()


func next_level():
	ufo_spawner.radius = randf_range(100, 200)
	ufo_spawner.count = randi_range(1, 4)
	ufo_spawner.rate  = randf_range(1, 5)
	ufo_spawner.position = dude.position
	ufo_spawner.spawn()	
	level = level + 1
	target = target + ufo_spawner.count


func _process(delta):
	if dude.ufo_count == target:
		next_level()
	$CanvasLayer/target.text="target_count: " + str(target)
	$CanvasLayer/level.text="level: " + str(level)
	pass
