extends CharacterBody2D



@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D





const SPEED = 300.0
const TURN_RATE = 180.0

var can_fire = true;

func _ready():
	# bullet = load("res://bullet.tscn")
	# bullet_spawn = get_node("shoot_point")
	pass
	




func _physics_process(delta):
	
	var t := Input.get_axis("turn_left", "turn_right")
	var turn = deg_to_rad(t * TURN_RATE * delta)
	rotate(turn)
	
	var w = Input.get_axis("move_forwards","move_backwards")
	var fow = transform.y * w * SPEED
	velocity = fow
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn.global_position
		b.global_rotation = bullet_spawn.global_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
	move_and_slide()
	pass

func _on_timer_timeout():
	can_fire = true 
	
	pass # Replace with function body

	
