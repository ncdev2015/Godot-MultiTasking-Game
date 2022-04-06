extends Node2D

var enemyScene = preload("res://Scenes/Game3/Enemy3/Enemy3.tscn")
var enemyPosition = 0

signal showGameOver

func _on_TimerRespawn_timeout():
	var enemy = enemyScene.instance()
	
	enemyPosition = int(rand_range(0, 100))
	
	if enemyPosition % 2 == 0: 
		enemy.position.y = rand_range(350, 700)
	else:
		enemy.position.y = rand_range(-300, 0)
	
	enemy.position.x = 600
	
	enemy.line = $Line2D
	
	$Enemies.add_child(enemy)


func _on_Game3_showGameOver():
	$LabelGameOver.show()
	get_parent().mostrarBtnRestart()
	
func hideLabelInstructions():
	$LabelInstructions.visible = false
