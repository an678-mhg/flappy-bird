extends Node2D

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	# Restart game khi nhấn SPACE hoặc ENTER
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
