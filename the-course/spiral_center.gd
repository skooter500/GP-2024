extends Node2D

@onready var spiral = $"../spiral"

func _ready():
	var viewport_size = get_viewport_rect().size
	var p = viewport_size / 2
	spiral.global_position = p
