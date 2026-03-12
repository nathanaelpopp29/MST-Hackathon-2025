extends Area2D

@onready var tile_map: TileMap = $".."

func _on_body_entered(body: Node2D) -> void:
	print("Outside at entrance")
	tile_map.set_layer_enabled(4, true)
