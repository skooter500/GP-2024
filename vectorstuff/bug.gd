extends Sprite2D

@export var speed = global_position /5
@onready var player = $"../player"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var to_player:Vector2 = player.global_position - global_position
	to_player = to_player.normalized()
	
	#DebugDraw20.set_text("Dist to player", to_player.length()
	global_position = global_position + to_player * speed * delta 
	
	
	
	pass
