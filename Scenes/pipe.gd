extends Node2D

var direction = Vector2.LEFT
@export var speed = 200
@export var gap := 100 

func _ready() -> void:
	randomize()
	
	var bottom_y = randi_range(0, 40)
	$Bottom.position.y = bottom_y
	$Top.position.y = bottom_y - gap
	
	$Bottom.connect("body_entered", game_over)
	$Top.connect("body_entered", game_over)
	
	# Score zone custom
	var shape2d = $ScoreZone.get_node("CollisionShape2D") as CollisionShape2D
	shape2d.shape.size.y = gap
	shape2d.position.y = bottom_y - gap / 2.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Di chuyển cả pipe (thay vì di chuyển từng child)
	position += direction * speed * delta
	
func game_over(body: Node2D):
	if body.name == "Bird":
		get_tree().call_deferred("change_scene_to_file","res://Scenes/game_over.tscn")

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	print("Cot da thoat khoi man hinh")
	queue_free()

func _on_score_zone_body_entered(body: Node2D) -> void:
	if body.name == "Bird":
		$ScoreAudio.play()
		$ScoreZone.set_deferred("monitorable", false)
