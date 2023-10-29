extends Node2D

@export var tilemap: TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var tile_vec = tilemap.local_to_map(get_global_mouse_position())
	
	var data = tilemap.get_cell_tile_data(0, tile_vec)
	#if data:
	#print(data.get_custom_data("plantable"))
	position = tilemap.map_to_local(tile_vec)

