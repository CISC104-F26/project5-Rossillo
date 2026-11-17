extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Player Character".hide()
	$"../Player Character".process_mode = Node.PROCESS_MODE_DISABLED
	$"../Obstacle Block".hide()
	$"../Obstacle Block".process_mode = Node.PROCESS_MODE_DISABLED
	$"../Evil Triangle".hide()
	$"../Evil Triangle".process_mode = Node.PROCESS_MODE_DISABLED


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	$"../Player Character".show()
	$"../Player Character".process_mode = Node.PROCESS_MODE_INHERIT
	$"../Obstacle Block".show()
	$"../Obstacle Block".process_mode = Node.PROCESS_MODE_INHERIT
	$"../Evil Triangle".show()
	$"../Evil Triangle".process_mode = Node.PROCESS_MODE_INHERIT
	$"../Game Start Menu".hide()


func _on_quit_button_pressed() -> void:
	get_tree().quit()
