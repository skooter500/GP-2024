extends Sprite2D
@export var time = 5
@export var speed = 10
@onready var player = $"../RigidBody2D/Sprite2D"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var a:float = 10 / 17.0
	var b:float = 0
	
	for i in range(17):
	b = a * 17.0
	print(b)
	pass
	var tot_time:float = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	
	if to_player.lenght() > 0.5:
	
	to_player = to_player.normalized()
	
	global_position = global_position + to_player * speed * delta
	
	tot_time += delta 
		
	pass
