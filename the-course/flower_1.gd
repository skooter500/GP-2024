extends Node2D

var radius:float
var count:int

func _draw01() -> void:
	var l = float(count)
	var theta_inc = 60
	var px = .2
	var py = .2
	var r = 1
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * r
		var y = cos(theta) * r
		draw_line(Vector2(px, py), Vector2(x, y), Color.DARK_MAGENTA, 10)
		draw_circle(Vector2(x, y), 1, Color.CORNSILK, false)
		px = x
		py = y
		r = r + 4
	pass

func _process(delta: float) -> void:
	queue_redraw()


func _on_h_slider_value_changed(value: float) -> void:
	count = value


func _on_h_slider_2_value_changed(value: float) -> void:
	radius = value
