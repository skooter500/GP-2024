extends CharacterBody2D

var play 

func _physics_process(delta):
	var direction = global_position.direction_to(play.global_position)
	velocity = direction * 300
	move_and_slide()
