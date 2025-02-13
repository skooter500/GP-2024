<<<<<<< HEAD
extends CharacterBody2D
var speed = 50
@onready var Spaceman = target_pos
var target_pos: Vector2
var start_pos:Vector2
@export var explosion:PackedScene

func _ready() -> void:
	target_pos = Spaceman
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
	
	var d:Vector2 = $"../Spaceman".global_position - global_position
	d = d.normalized()
	velocity = d * speed
	
	
	var c =  move_and_collide(velocity * delta)
	if c:
		if c.get_collider().name.contains("Spaceman"):
			c.get_collider().queue_free()
			speed = 0
			#var e = explosion.instantiate()
			#get_tree().get_root().add_child(e)
			#e.global_position = self.global_position
			#e.emitting = true
			#self.queue_free()
	
	#if target_pos.y < start_pos.y:
		#velocity.y = 50
	#if target_pos.y > start_pos.y:
		#velocity.y = -50
	#if target_pos.x < start_pos.x:
		#velocity.x = -50
	#if target_pos.x > start_pos.x:
		#velocity.x = 50
	move_and_slide()

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
=======
extends Sprite2D

@export var player:Node2D

@export var speed:float = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player = player.global_position - global_position
	
	to_player = to_player.normalized()
	
	global_position = global_position + (- to_player * speed * delta)
	
	pass
>>>>>>> 344b3500755176c7aaf1b180a630655787f55e8f
