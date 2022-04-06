extends Node2D

var enemyScene = preload("res://Scenes/Game2/Enemy2/Enemy2.tscn")
var screeSize = Vector2()

signal showGameOverLabel

func _ready():
	screeSize = get_viewport().size
	
func _process(delta):
	pass

func _on_TimeRespawn_timeout():
	var enemy = enemyScene.instance()
	enemy.position.x = rand_range(341.33, 682.66)
	enemy.position.y = 0
	add_child(enemy)


func _on_Game2_showGameOverLabel():
	$LabelGameOver.show()
	get_parent().mostrarBtnRestart()

func hideLabelInstructions():
	$LabelInstructions.visible = false
