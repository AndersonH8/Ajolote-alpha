if (keyboard_check(vk_right)) {
    // Mover hacia la derecha si no hay colisión
    if (!place_meeting(x + move_speed, y - 20, obj_obstaculo)) {
        x += move_speed;
        image_xscale = 0.6; // Escala normal
		sprite_index = sprotagonistaDerecha;
    }
} else if (keyboard_check(vk_left)) {
    // Mover hacia la izquierda si no hay colisión
    if (!place_meeting(x - move_speed, y - 20, obj_obstaculo)) {
        x -= move_speed;
        image_xscale = -0.6; // Invierte la escala para girar hacia la izquierda
    } else {
        image_xscale = 0.6; // Restablece la escala a normal si hay colisión hacia la izquierda
    }
	sprite_index= sprotagonistaDerecha;
} 
if (!keyboard_check(vk_left) && !keyboard_check(vk_right) && !keyboard_check(vk_up) && !keyboard_check(vk_down)) {
   sprite_index=sprotagonistaQuieto;
}
if (keyboard_check(vk_down)) {
  sprite_index= sprotagonistaAgachado;
}
if (keyboard_check(vk_space)) {
  sprite_index= sprotagonistaSaltando;
}




if (place_meeting(x, y, obj_obstaculo)) {
    vspeed = 0;
    gravity = 0;
} else {
    gravity = 1;
}

if (keyboard_check(vk_space) && gravity == 0) {
    vspeed = -20;
    gravity = 1;
}
