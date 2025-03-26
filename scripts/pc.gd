extends StaticBody3D

var player: CharacterBody3D
var player_interface: Control

@onready var pc_screen: PanelContainer = $PcScreen



func _ready() -> void:
	pc_screen.visible = false

func focus_screen():
	pc_screen.visible = true

func unfocus_screen():
	pc_screen.visible = false
