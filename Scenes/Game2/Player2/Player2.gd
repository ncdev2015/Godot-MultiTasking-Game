extends Node2D

var SPEED = 200
var gameOver = false

func _process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		$Area2D.position.x -= SPEED * delta
	if Input.is_key_pressed(KEY_RIGHT):
		$Area2D.position.x += SPEED * delta

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		get_tree().paused = true
		gameOver = true
		get_parent().emit_signal("showGameOverLabel")


func _on_VisibilityNotifier2D_screen_exited():
	get_tree().paused = true
	gameOver = true
	get_parent().emit_signal("showGameOverLabel")
