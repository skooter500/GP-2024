extends RigidBody2D

@export var engine_power = 800
@export var double_power = 1200
@export var spin_power = 10000
@export var lives:int = 100
var thrust = Vector2.ZERO
var rotation_dir = 0
var esc = KEY_ESCAPE
var shift = KEY_SHIFT
var can_fire = true


func respawn():
	# Tween my scale using elastic
	scale = Vector2.ZERO
	var tween = create_tween().set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "scale", Vector2.ONE, 1)
	
	position = Vector2.ZERO
	rotation = randf_range(0, TAU)
	# Randomly vary the pitch of the audio and play it

func _on_RigidBody2D_area_entered(area):
	if area.get_parent().name.begins_with("shidstain"):
		get_tree().quit()
	pass

func _on_area_entered(area: Area2D) -> void:
	print ("collided")
	print(area)
	area.queue_free()
pass


func get_input():
	thrust = Vector2.ZERO
	if Input.is_action_pressed("thrust"):
		thrust -= transform.y * engine_power
	rotation_dir = Input.get_axis("rotate_left", "rotate_right")
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://Bomber Man/Menu for bomb ber.tscn")		
	#if Input.is_action_pressed("e"):
		#thrust -= transform.y * double_power
		rotation_dir = Input.get_axis("rotate_left", "rotate_right")
	pass
func _physics_process(_delta):
	get_input()
	constant_force = thrust
	constant_torque = rotation_dir * spin_power
	pass
		
	
