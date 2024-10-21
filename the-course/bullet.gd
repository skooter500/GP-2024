<<<<<<< HEAD
extends Area2D

@export var Bullet : PackedScene

var speed = 750

func _physics_process(delta):
	position += transform.x * speed * delta

func _on_Bullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()
	if Input.is_action_just_pressed("shoot"):
		shoot():
		func shoot():
	var b = Bullet.instance()
	add_child(b)
	b.transform = $Muzzle.transform
	
=======
extends CharacterBody2D

@export var speed = 20

@export var explosion:PackedScene

	
func _process(delta):
	velocity = -transform.y * speed
	var c =  move_and_collide(velocity * delta)
	if c:
		if c.get_collider().name.contains("block"):
			c.get_collider().queue_free()
			var e = explosion.instantiate()
			get_tree().get_root().add_child(e)
			e.global_position = self.global_position
			e.emitting = true
			self.queue_free()


func _on_timer_timeout():
	self.queue_free()
	pass # Replace with function body.
>>>>>>> bb5f40e80b73069e85d7ffc68436e713392cb601
