extends Node2D

const speed =60
var direction = 1
@onready var ray_cast_2_right = $RayCast2Right
@onready var ray_cast_2_left = $RayCast2Left
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if ray_cast_2_right.is_colliding():
		direction= -1
		animated_sprite_2d.flip_h= true
	if ray_cast_2_left.is_colliding():
		direction= +1
		animated_sprite_2d.flip_h= false
	
	position.x += direction* speed * delta
