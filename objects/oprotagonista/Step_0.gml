if (keyboard_check(vk_right)) {
    // Mover hacia la derecha si no hay colisión
    if (!place_meeting(x + move_speed, y -20, obj_obstaculo))
        x += move_speed;
    } else if (keyboard_check(vk_left)) {
    // Mover hacia la izquierda si no hay colisión
    if (!place_meeting(x - move_speed, y -20, obj_obstaculo))
        x -= move_speed;
}
var
if place_meeting(x, y , obj_obstaculo)
{vspeed = 0
	gravity = 0} else {gravity = 1}

	if keyboard_check(vk_space) && gravity = 0
 {
 vspeed = - 20
 gravity = 1
  }
