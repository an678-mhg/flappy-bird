extends CharacterBody2D

const JUMP_VELOCITY = -300.0
var is_start_game = false

func _physics_process(delta: float) -> void:
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		is_start_game = true
		velocity.y = JUMP_VELOCITY
	elif is_start_game == true:
		velocity += get_gravity() * delta

	move_and_slide()
