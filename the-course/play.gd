extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("turn_left", "turn_right", "move_forwards", "move_backwards")
	velocity = direction * 600
	move_and_slide()
	
