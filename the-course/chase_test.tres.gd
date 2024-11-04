extends Sprite2D

@onready var player: Sprite2D = $"../player"
@export var time = 5

@export var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	var tot_time:float = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var to_player:Vector2 = player.global_position - global_position
	
	if to_player.length() > 0.1:
		to_player = to_player.normalized()
		DebugDraw2D.set_text("dist to player", to_player.length())
		
		global_position = global_position + to_player * speed * delta
		
