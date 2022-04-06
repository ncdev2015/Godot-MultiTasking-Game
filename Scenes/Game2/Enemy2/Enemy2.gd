extends Node2D

var SPEED = 75

func _process(delta):
	$Area2D.position.y += delta * SPEED

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
