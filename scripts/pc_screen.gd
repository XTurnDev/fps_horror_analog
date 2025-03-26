extends PanelContainer

@export var label : Label

var counter: int = 0

func _ready() -> void:
	label.text = str(counter)

func _on_button_pressed() -> void:
	counter += 1
	label.text = str(counter)
