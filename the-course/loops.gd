extends Node2D
var n = 1
var i = 10

func _ready() -> void:
	for n in 11:
		print(n)
	while i > 0:
		print(i)
		i -= 1
	for x in range(3):
		var row = ""
		for y in range(3):
			row += "(" + str(x) + "," + str(y) + ")"
		print(row)
		
