extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("action1"):
		rotate_tile_children(PI/2)


func rotate_tile_children(angle):
	var m = Transform2D()
	m = m.rotated(-PI/2)
	for child in get_children():
		print("child position: {pos}".format({"pos":child.position}))
		child.position = m * child.position
		print("child position after transform: {pos}".format({"pos":child.position}))
		
		
