extends Control

func _on_homesettings_pressed():
	get_tree().change_scene_to_file("res://UI/scenes/denied.tscn")

func _on_exit_pressed():
	get_tree().quit()


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/game_level.tscn")
