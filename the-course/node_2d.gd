extends Node2D


<<<<<<< HEAD
@export var bug_scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	var count = 10
	
	for i in range(count):
		var w = bug_scene.instantiate()
		var p = Vector2(i * 50, 0)
		w.position = p
		add_child(w)

=======
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
>>>>>>> e25075f (Commit1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
