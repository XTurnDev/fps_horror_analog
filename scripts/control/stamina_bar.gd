extends ProgressBar


@export var character: CharacterBody3D
@export var animation_player : AnimationPlayer

var visibly : bool = true

var timer : float = 1

func _physics_process(delta: float) -> void:
	if visibly:
		if character.stamina == 10:
			timer -= delta
			if timer < 0:
				animation_player.play("pop")
				visibly = false
				timer = 1
	
	if not visibly:
		if character.stamina != 10:
			animation_player.play_backwards("pop")
			visibly = true
			
	
