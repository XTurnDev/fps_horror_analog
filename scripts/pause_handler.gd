extends Node

@onready var pause_menu: Control = $"../UserInterface/PauseMenu"
@export var character: CharacterBody3D

var paused : bool = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_pause"):
		if not paused:
			if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
			pause_menu.visible = true
			get_tree().paused = true
			paused = true
		else:
			if not character.inPc:
				if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
					Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			pause_menu.visible = false
			get_tree().paused = false
			paused = false
