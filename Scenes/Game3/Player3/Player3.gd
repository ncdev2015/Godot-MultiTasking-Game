extends Node2D

var SPEED = 300
var SPEED_JUMP = 650
var gameOver = false

var enemyScene = preload("res://Scenes/Game3/Enemy3/Enemy3.tscn")

func _process(delta):
	$Area2D.position.y += delta * SPEED
	
	if Input.is_key_pressed(KEY_SPACE):
		$Area2D.position.y -= delta * SPEED_JUMP
		
func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy"):
		gameOver = true
		get_tree().paused = true
		print("aca1")
		get_parent().emit_signal("showGameOver")


func _on_VisibilityNotifier2D_screen_exited():
	gameOver = true
	get_tree().paused = true
	print("aca2")
	get_parent().emit_signal("showGameOver")
