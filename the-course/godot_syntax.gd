# This script extends area2d so it can be attached to an area2d
extends Area2D

# @export means expose the variable in the editor
@export var explosion_scene:PackedScene

# This variable is global in the script
# can be used in each of the functions
var some_variable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	
	# Examples of GDScript syntax
	var f:float
	var g:float
	var h:float	
	f = 10 # assignment of a value to a float
	g = 20
	h = 3	
	f += 2 # add 2 to f
	f = f + 2
	g = f - 5	
	h *= 2
	g = h / 3	# divide h by 3
	var j:int	
	var k:int
	var l:int
	
	j = 4
	k = 10
	l = k / j
	
	print(j)
	print(k)
	print(l)
	
	print(f)
	print(g)
	print(h)	
	
	# The if statement! For checking things	
	var score:int = 9
	
	if score == 10:
		print("You got the max score")
	if score > 5 and score < 9:
		print("You got a good score")
	if score <=5:
		print("Try harder!")
	
	# Loops! Do things many times
	
	for i in range(5):
		print(i)
		
	print()	
	# start at 1 finish at 4
	for i in range(1, 5):
		print(i) 

	print()
	# start at 4 finish at 0
	for i in range(5, -1, -1):
		print(i) 

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:	
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("glob_pos", global_position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("glo_rotation", global_rotation)
	
	rotation -= 0.1
	
	position.x += 1
	# position.y += 1
	
	# Find a node in the scene
	var wall:Node2D = get_node("../wall2")	
	
	# this will also work!
	wall = $"../wall2"
	
	# Add this from assetlib if you need it
	DebugDraw2D.set_text("dist", wall.global_position.distance_to(global_position))
	
	pass


func _on_area_entered(area: Area2D) -> void:
	print("Collided!")
	
	
	if area.name == "wall":
		print(area)
		
		# Create an explosion from the collision
		var explosion:GPUParticles2D = explosion_scene.instantiate()
		explosion.global_position = area.global_position
		explosion.emitting = true
		
		# Add the explosion to the scene tree
		get_parent().add_child(explosion)	
		
		# delete the thing I collide with
		area.queue_free()
		
	pass # Replace with function body.
