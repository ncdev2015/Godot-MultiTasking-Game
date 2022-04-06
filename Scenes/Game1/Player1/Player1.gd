extends Node2D

var SPEED = 200
var gameOver = false
var isPaused = false

func _process(delta):
	if Input.is_key_pressed(KEY_UP):
		$Area2D.position.y -= SPEED * delta
	if Input.is_key_pressed(KEY_DOWN):
		$Area2D.position.y += SPEED * delta

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		get_tree().paused = true
		gameOver = true
		get_parent().emit_signal("showGameOverLabel")


func _on_VisibilityNotifier2D_screen_exited():
	get_tree().paused = true
	gameOver = true
	get_parent().emit_signal("showGameOverLabel")
