extends Node2D

@export var speed = 10
@export var player = $Player
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var a:float = 10.0 / 17.0
	var b:float
	
	b = a * 17.0
	print(b)
	
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	
	
	if to_player.length() > 0.1:
		DebugDraw2D.set_text("Dist to player", to_player)
	var to_player:Vector3 = player.global_position - global_position
	
	DubugDraw2D.set_text("Dist to player", to_player.length())
	
	to_player = to_player.normalized()
	DubugDraw2D.set_text("Normalized to player", to_player.length())
	pass
