extends AnimatedSprite2D

const SPEED = 60

var direction = 1 

@onready var ray_castright = $RayCastright
@onready var ray_castleft = $RayCastleft
@onready var animated_sprite_2d = $"."

func _process(delta):
	if ray_castright and ray_castright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	elif ray_castleft and ray_castleft.is_colliding():
		direction = 1	
		animated_sprite_2d.flip_h = false
	position.x += SPEED * direction * delta



