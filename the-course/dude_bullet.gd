
class_name DudeBullet

extends CharacterBody2D

@export var speed = 20
@export var color:Color = Color.WHITE
@export var explosion:PackedScene
@export var line_size:float = 3



func _draw():
	draw_line(Vector2(0, 10), Vector2(0, -10), color, line_size)

	
func _process(delta):
	velocity = -transform.y * speed
	var c =  move_and_collide(velocity * delta)
	if c and c.get_collider().is_in_group("ufo"):  # Layer 2 (example)
		print("Collided with a ufo!")	
		c.get_collider().queue_free()
		var e = explosion.instantiate()
		e.modulate = c.get_collider().color
		get_tree().get_root().add_child(e)
		e.global_position = self.global_position
		e.emitting = true
		self.queue_free()

func _on_timer_timeout():
	self.queue_free()
	pass # Replace with function body.
