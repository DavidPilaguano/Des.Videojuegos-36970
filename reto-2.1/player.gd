extends Node2D

@export var velocidad: float = 320.0

const FUERZA_SALTO := 460.0
const GRAVEDAD := 1300.0

@onready var altura_suelo: float = position.y
var velocidad_vertical := 0.0


func _physics_process(delta: float) -> void:
	var direccion := Input.get_axis("move_left", "move_right")
	position.x += direccion * velocidad * delta
	position.x = clampf(position.x, 24.0, get_viewport_rect().size.x - 24.0)

	if Input.is_action_just_pressed("jump") and position.y >= altura_suelo:
		velocidad_vertical = -FUERZA_SALTO

	velocidad_vertical += GRAVEDAD * delta
	position.y += velocidad_vertical * delta
	if position.y >= altura_suelo:
		position.y = altura_suelo
		velocidad_vertical = 0.0
