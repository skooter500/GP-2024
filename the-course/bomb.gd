extends Area2D

var speed = 300

func  _physics_process(delta):
	position.y += speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.name == "laser_area":
		self.queue_free()
	pass # Replace with function body.
