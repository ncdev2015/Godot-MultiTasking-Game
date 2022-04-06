extends Node2D

var SPEED = 130
var xPosToRemove = 350

var line = Node2D

func _process(delta):
	position.x -= delta * SPEED
	
	if position.x <= line.position.x + $Area2D/Sprite.texture.get_size().x / 3:
		queue_free()
