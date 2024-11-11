extends RigidBody2D

@export var engine_power = 800
@export var spin_power = 10000

var thrust = Vector2.ZERO
var rotation_dir = 0
var esc = KEY_ESCAPE

func _on_RigidBody2D_area_entered(area):
	if area.get_parent().name.begins_with("shidstain"):
		get_tree().quit()
	pass

func _on_RigidBody2D_body_entered(body):
	if RigidBody2D.name.begins_with("evil"):
		print("collided with", body.get_parent().get_name())
		get_tree().quit()
	pass
	
func get_input():
	thrust = Vector2.ZERO
	if Input.is_action_pressed("thrust"):
		thrust -= transform.y * engine_power
	rotation_dir = Input.get_axis("rotate_left", "rotate_right")
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://Bomber Man/Menu for bomb ber.tscn")		

	
func _physics_process(_delta):
	get_input()
	constant_force = thrust
	constant_torque = rotation_dir * spin_power
	
pass
