extends Node2D

var radius:float
var count:int

func _draw() -> void:
	var l= float(count)
	#for i in range (l):
		#draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.DEEP_PINK, 10)
	
	
	var theta_inc = 0.01
	var px = 0 
	var py = 0 
	var r = 0
	for i in range(l):
		var theta = theta_inc * i 
		var x = sin(theta) * r
		var y = cos(theta) * r
		draw_line(Vector2(px, py), Vector2(x, y), Color.ALICE_BLUE, 10)
		draw_circle(Vector2(x, y), 10, Color.ORANGE, false)
		px = x 
		py = y
		r = r + radius
	
	
	
	
	pass
	
func _process(delta: float) -> void:
	queue_redraw()


func _on_num_lines_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.


func _on_radius_value_changed(value: float) -> void:
	radius = value 
	pass # Replace with function body.
