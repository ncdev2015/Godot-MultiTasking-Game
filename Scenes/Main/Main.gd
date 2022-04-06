extends Node2D

var timeUsed = 0

func _ready():
	get_tree().paused = true

func _process(delta):
	timeUsed += delta
	$LabelTime.text = str(int(timeUsed))

func _on_Continue_pressed():
	get_tree().paused = false
	$Continue.visible = false
	
	$Game1.hideLabelInstructions()
	$Game2.hideLabelInstructions()
	$Game3.hideLabelInstructions()

func mostrarBtnRestart():
	$Restart.visible = true

func _on_Restart_pressed():
	get_tree().change_scene("res://Scenes/Main/Main.tscn")
