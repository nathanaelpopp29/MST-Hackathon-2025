extends CharacterBody2D

@export var SPEED = 7500
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	
	var xdirection = Input.get_axis("left", "right")
	var ydirection = Input.get_axis("up", "down")
	
	if xdirection and ydirection:
		velocity.x = xdirection * SPEED * delta
		velocity.y = ydirection * SPEED * delta
		# For vertical axis dominance
		"""if ydirection > 0:
			animated_sprite.play("WalkDown")
		elif ydirection < 0:
			animated_sprite.play("WalkUp")"""
		# For horizontal axis dominance
		if xdirection > 0:
			animated_sprite.play("WalkRight")
		elif xdirection < 0:
			animated_sprite.play("WalkLeft")
	
	elif xdirection and !ydirection:
		velocity.x = xdirection * SPEED * delta
		velocity.y = move_toward(velocity.x, 0, SPEED)
		if xdirection > 0:
			animated_sprite.play("WalkRight")
		elif xdirection < 0:
			animated_sprite.play("WalkLeft")
			
	elif ydirection and !xdirection:
		velocity.y = ydirection * SPEED * delta
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if ydirection > 0:
			animated_sprite.play("WalkDown")
		elif ydirection < 0:
			animated_sprite.play("WalkUp")
			
	elif !xdirection and !ydirection:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.x, 0, SPEED)
		animated_sprite.play("Idle")
		
		
	move_and_slide()
