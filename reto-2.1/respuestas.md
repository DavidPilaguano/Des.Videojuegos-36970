# Respuestas

1. **Mantener D durante dos segundos.** Sube más el contador de cuadros, porque suma uno en cada cuadro mientras mantengo D. El contador de eventos suma dos en total, uno al pulsar D y otro al soltarla. El código ignora las repeticiones automáticas del teclado.
2. **Mantener A.** `get_axis` muestra `-1.00` y `get_action_strength("move_right")` muestra `0.00`. El eje resta la fuerza de izquierda a la de derecha (0 menos 1). La fuerza de la acción derecha sigue en cero porque D está suelta.
3. **Girar la rueda.** Aparece `InputEventMouseButton`. Godot usa esa clase tanto para la rueda como para los clics. Se revisa primero el índice de la rueda para identificarla antes de que el caso general la marque como clic.
