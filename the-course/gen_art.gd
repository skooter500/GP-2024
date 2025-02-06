extends Node2D

var radius:float
var count:int


func _draw() -> void:
	var s:float = $num_slider.value
	for i in range(s):
		draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.DARK_BLUE, 10)
	
	var theta_inc= PI*2.0/s
	for i in range(s):
		var theta= theta_inc * i
		var x = sin(theta) * radius
		var y= cos(theta) * radius
		draw_circle(Vector2(x,y), radius, Color.HOT_PINK, false)
	pass
	
func _process(delta: float) -> void:
	queue_redraw()

func _on_num_slider_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.


func _on_rad_slider_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.
