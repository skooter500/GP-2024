extends Area2D

func _ready() -> void:
	
	var f:float
	var g:float
	var h:float

	f = 10
	g = 20
	h = 3

	f += 2
	f = f + 2
	g = f - 5

	h *= 2
	g = h/3

	var i:int
	var j:int
	var k:int

	i = 10
	j = 4
	k = i/j
	
	print(i)
	print(j)
	print(k)
	print(f)
	print(g)
	print(h)
	
	pass
	
func _process(delta: float) -> void:
	DebugDraw2D.set_text("pos", position)
	

func _on_area_entered(area: Area2D) -> void:
	print("Collieded!")
	print(area)
	area.queue_free()
	pass
	
	
