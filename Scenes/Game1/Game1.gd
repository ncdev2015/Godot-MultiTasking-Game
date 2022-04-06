extends Node2D

var enemyScene = preload("res://Scenes/Game1/Enemy1/Enemy1.tscn")
var screeSize = Vector2()

signal showGameOverLabel

func _ready():
	screeSize = get_viewport().size

func _on_TimeRespawn_timeout():
	var enemy = enemyScene.instance()
	enemy.position.y = rand_range(1, screeSize.y)
	enemy.position.x = 341.33
	add_child(enemy)

func _on_Game1_showGameOverLabel():
	$LabelGameOver.show()
	get_parent().mostrarBtnRestart()

func hideLabelInstructions():
	$LabelInstructions.visible = false
