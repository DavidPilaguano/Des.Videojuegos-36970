# Ficha del dispositivo · Teclado

- **Tecnología de captura.** Cuando presiono una tecla de un teclado convencional, su interruptor cierra un contacto. El controlador del teclado detecta qué tecla cambió de estado y envía esa información al equipo. Godot recibe la pulsación o la liberación como un `InputEventKey`.
- **Tipo de señal.** Digital. Para este juego cada tecla tiene dos estados, pulsada o suelta, que corresponden a 1 y 0.
- **Ventaja.** Puedo asignar una tecla a cada acción y combinar acciones, como moverme y saltar.
- **Limitación.** Presionar D más fuerte no hace que el personaje se mueva más rápido, porque la tecla solo indica si está pulsada.
- **Juego ejemplo.** Minecraft Education usa WASD para moverse y la barra espaciadora para saltar. [Guía de controles](https://education.minecraft.net/content/dam/education-edition/software-downloads/MCEDU%20Movement%20Control%20Guide.pdf).
- **Fuente.** [Documentación de Godot sobre InputEventKey](https://docs.godotengine.org/en/stable/classes/class_inputeventkey.html).
