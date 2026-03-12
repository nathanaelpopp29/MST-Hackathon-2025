extends CharacterBody2D


const SPEED = 0
const JUMP_VELOCITY = 0


func _physics_process(delta: float) -> void:

	if velocity.x == 0:
		AnimatedSprite2D.animation = "default"

	move_and_slide()
