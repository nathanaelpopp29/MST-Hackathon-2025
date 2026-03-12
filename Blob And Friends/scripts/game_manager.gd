extends Node

var score = 0
@onready var friend_count: Label = $"../Camera2D/Friend count"

func add_point():
	score +=  1;
	friend_count.text = "Friends Found: " + str(score) + "/4"
	if score == 4:
		win()
	
func _shortcut_input(input):
	if input.is_action_pressed("escape"):
		get_tree().quit()
		
func win():
	friend_count.text = "Blob!!!\nYOU FOUND YOUR FRIENDS!!!\n\n\n\n\nNow Esc to be\nTogether Forever!"
	
