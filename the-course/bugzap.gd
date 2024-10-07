extends Node2D

@export var custom_font : Font
@onready var bug_spawner_timer = $bug_spawner/bug_spawner_timer
@onready var bug_spawner = $bug_spawner
@export var bug: PackedScene

func _ready():
	# DebugDraw2D.config.text_custom_font = custom_font	
	# DebugDraw2D.config.text_default_size = 24
	_on_bug_spawner_timer_timeout()
	
func reset_game():
	pass
	
func _input(event):
	if event is InputEventKey:
		var key_event = event as InputEventKey
		if key_event.keycode == KEY_Q and key_event.pressed:
			get_tree().quit()


func _on_bug_spawner_timer_timeout():
	var new_enemy = bug.instantiate()
	new_enemy.global_position = bug_spawner.global_position
	new_enemy.global_rotation = bug_spawner.global_rotation
	get_tree().get_root().add_child(new_enemy) 
	$bug_spawner/bug_spawner_timer.start()
