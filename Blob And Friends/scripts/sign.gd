extends Area2D

@onready var locations: Label = $Locations
var inside = false

func _on_body_entered(_body):
	inside = true
		
func _on_body_exited(_body):
	inside = false
	locations.text = ""

func _shortcut_input(inp):
	if inp.is_action_pressed("interact") and inside:
		locations.text = "                               House >\nLake V\n                               Maze >"
