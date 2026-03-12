extends Node2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var player: CharacterBody2D = %PlayerCat

@export var SPEED = 20
var xdirection = 1
var ydirection = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.position.x - position.x > 0 :
		xdirection = 1
		animated_sprite.flip_h = false
	else:
		xdirection = -1
		animated_sprite.flip_h = true
		
	if player.position.y - position.y > 0 :
		ydirection = 1
	else:
		ydirection = -1
		
	position.x += xdirection * SPEED * delta
	position.y += ydirection * SPEED * delta
