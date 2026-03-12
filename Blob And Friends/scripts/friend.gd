extends Area2D

@onready var game_manager: Node = %"Game Manager"
@onready var sound: AudioStreamPlayer2D = $"../PickupSound2"

func _on_body_entered(_body):
	game_manager.add_point()
	sound.play()
	queue_free()
