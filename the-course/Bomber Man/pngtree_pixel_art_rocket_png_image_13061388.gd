extends Sprite2D
@export var time = 5
@export var speed = 50
@onready var player = $"../Player"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var a:float = 10 / 17.0
	var b:float = 0
	
	for i in range(17):
		b = a * 17.0
	print(b)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	if to_player.length() > 0.5:
		to_player = to_player.normalized()
		global_position = global_position + to_player * speed * delta
	pass
func _on_area_entered(area:Area2D) -> void:
	print ("collided")
	print(area)
	area.queue_free()
pass
