extends Node

@onready var pause_menu: PanelContainer = $"../UserInterface/PauseMenu"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_pause"):
		match Input.mouse_mode:
			Input.MOUSE_MODE_CAPTURED:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
				pause_menu.visible = true
				
				get_tree().paused = true
			Input.MOUSE_MODE_VISIBLE:
				Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
				pause_menu.visible = false
				
				get_tree().paused = false
