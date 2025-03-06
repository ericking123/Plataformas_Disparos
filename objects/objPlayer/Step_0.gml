#region Movimiento Horizontal
	var dimensionRectangulo = 8;
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (hor != 0) {
		if (place_free(x + hor * 2, y)) {
			x += hor * 2;	
		}
		image_xscale = hor;
		action = "Run";

	} else if (vspeed == 0) {
		action = "Idle";

	}
#endregion

#region Salto
	if (keyboard_check_pressed(vk_up) && collision_rectangle(x-dimensionRectangulo, y, x+dimensionRectangulo, y+1, objWall, false, false)) {
		vspeed = -5;
	}
#endregion