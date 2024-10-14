extends CharacterBody2D

var dir = Vector2()
var Spaceman
#var position

func _ready() -> void:
	pass

func _physics_process(delta):
	if position.y > dir.y:
		velocity.y = -50
	if position.y < dir.y:
		velocity.y = 50
