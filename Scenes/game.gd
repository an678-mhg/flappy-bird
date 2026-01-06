extends Node2D

var pipe = preload("res://Scenes/pipe.tscn")
var is_start_game = false

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and is_start_game == false:
		is_start_game = true
		$PipeTimer.get_node("Timer").start()   # ⭐ chỉ gọi 1 lần

func _on_timer_timeout() -> void:
	var new_pipe = pipe.instantiate() as Node2D
	new_pipe.position = $PipePosition.position
	$Objects.add_child(new_pipe)

func _on_dead_zone_body_entered(body: Node2D) -> void:
	if body.name == "Bird":
		get_tree().call_deferred("change_scene_to_file","res://Scenes/game_over.tscn")
