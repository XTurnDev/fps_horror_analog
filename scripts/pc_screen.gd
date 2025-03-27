extends Control

@export var label : Label
@export var player: CharacterBody3D


func _ready() -> void:
	label.text = str(player.money)

func _on_button_pressed() -> void:
	player.money += 1
	label.text = str(player.money)
	player.money_gain.emit()
