extends CharacterBody2D

var score = 0

const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:

	# Apply gravity.
	if not is_on_floor():
		velocity.y += get_gravity().y * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	$"../Game Over Menu".show()
	$"../Player Character".hide()


func _on_evil_triangle_body_entered(body: Node2D) -> void:
	$"../Game Over Menu".show()
	$"../Player Character".hide()
