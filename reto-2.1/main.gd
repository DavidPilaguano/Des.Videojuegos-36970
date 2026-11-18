extends Node2D

@onready var hud: Label = $Hud

var cuadros_derecha := 0
var eventos_derecha := 0
var clase := "—"
var dispositivo := "—"
var senal := "—"


func _process(_delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		cuadros_derecha += 1

	var salto := "falso"
	if Input.is_action_pressed("jump"):
		salto = "verdadero"

	var eje := Input.get_axis("move_left", "move_right")
	var fuerza := Input.get_action_strength("move_right")

	hud.text = "A / D   Mover     ·     Espacio   Saltar\n\n"
	hud.text += "jump: %s\nget_axis: %.2f\nget_action_strength(\"move_right\"): %.2f\n\n" % [salto, eje, fuerza]
	hud.text += "Último evento: %s\nDispositivo: %s\nTipo de señal: %s\n\n" % [clase, dispositivo, senal]
	hud.text += "Cuadros con move_right pulsada: %d\nEventos de move_right: %d" % [cuadros_derecha, eventos_derecha]


func _input(event: InputEvent) -> void:
	if event.is_echo():
		return

	if event.is_action_pressed("move_right") or event.is_action_released("move_right"):
		eventos_derecha += 1

	clase = event.get_class()
	if event is InputEventKey:
		dispositivo = "Teclado"
		senal = "Digital"
	elif event is InputEventMouseButton:
		dispositivo = "Ratón"
		if event.button_index in [MOUSE_BUTTON_WHEEL_UP, MOUSE_BUTTON_WHEEL_DOWN, MOUSE_BUTTON_WHEEL_LEFT, MOUSE_BUTTON_WHEEL_RIGHT]:
			senal = "Digital (rueda)"
		else:
			senal = "Digital (clic)"
	elif event is InputEventMouseMotion:
		dispositivo = "Ratón"
		senal = "Posición"
	elif event is InputEventJoypadMotion:
		dispositivo = "Mando"
		senal = "Analógica"
	elif event is InputEventJoypadButton:
		dispositivo = "Mando"
		senal = "Digital"
	elif event is InputEventScreenTouch or event is InputEventScreenDrag:
		dispositivo = "Pantalla táctil"
		senal = "Posición"
	else:
		dispositivo = "ID %d" % event.device
		senal = "—"
