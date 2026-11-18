extends Node2D

@export var velocidad: float = 320.0


func _process(delta: float) -> void:
	var direccion := Input.get_axis("move_left", "move_right")
	position.x += direccion * velocidad * delta
	position.x = clampf(position.x, 24.0, get_viewport_rect().size.x - 24.0)
