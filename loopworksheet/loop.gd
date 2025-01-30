extends Node2D
	
	
func _ready() -> void:
		pass
	
func _process(delta: float) -> void:
	pass
	
	for i in range(1, 11):
		print(i)

	var i = 10
	while i > 0:
		print(i)
		i -= 1
	
	for x in range(3):
		for y in range(3):
			print("(%d, %d)" % [x, y])
