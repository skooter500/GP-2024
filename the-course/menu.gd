extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Bomber Man/RocketMan.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
