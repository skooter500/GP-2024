extends CharacterBody2D
var speed = 50
var target_pos: Vector2
var start_pos:Vector2

func _ready() -> void:
	target_pos = global_position
	start_pos = global_position

func move_up():
	position.y = -50

func move_down():
	position.y = 50

func move_left():
	position.x = -50

func move_right():
	position.x = 50

#var choose = [move_down(),move_up(), move_right(), move_left()]

func _physics_process(delta):
	velocity = Vector2.ZERO
	if target_pos:
		velocity = position.direction_to(target_pos) * speed
	move_and_slide()
	"""
	if target_pos.y > start_pos.y:
		move_down()
	if target_pos.y < start_pos.y:
		position.y = -50
	if target_pos.x > start_pos.x:
		move_left()
	if target_pos.x < start_pos.x:
		move_right()
	"""

"""
func on_timer_timeout():
	var offset = randf_range(0, 500)
	target_pos = position
	target_pos.x += offset
	target_pos.y += offset
	if target_pos.x < 20:
		target_pos.x = 20
	if target_pos.y < 20:
		target_pos.y = 20
	var w = get_viewport_rect().size.x
	if target_pos.x > w -20:
		target_pos.x = w - 20
	var u = get_viewport_rect().size.y
	if target_pos.y > u -20:
		target_pos.y = u - 20
	while target_pos != position:
		$Timer.start()
	pass
"""
