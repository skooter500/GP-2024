extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.RED, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.DARK_SALMON)
	draw_circle(Vector2(500, 500), 100, Color.BLUE_VIOLET, true)#the true at the end, makes the shape filled or not
	
	var v = get_viewport_rect() #gets screne size
	
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x,0), Color.AQUAMARINE)
	
	for i in range(10):
		print(i)
		
	for i in range(-10. -1, -1):
		print(i)	
		
	var basket = ["apple", "bananna", "carrot"]
	
	for f in basket:
		print(f)
		
	for i in range(basket.size()):
		print(basket[i])
		
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
		
	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.x), Color.AQUAMARINE)
	pass
