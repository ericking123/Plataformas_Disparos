#region Gravedad
	var alturaJugador = 25;
	var dimensionRectangulo = 8;

	if (!collision_rectangle(x-dimensionRectangulo, y, x+dimensionRectangulo, y+1, objWall, false, false)) {
		gravity = 0.3;
		action = "Jump";
		// sprite_index = sprHeroJump;

	}
	if (vspeed > 0) {
		var ground = collision_rectangle(x-dimensionRectangulo, y, x+dimensionRectangulo, y+vspeed, objWall, false, false);
		if (ground) {
			y = ground.y;
			vspeed = 0;
			gravity = 0;
		}
	} else if (vspeed < 0) {
		var ceiling = collision_rectangle(x-dimensionRectangulo, y-alturaJugador, x+dimensionRectangulo, y-alturaJugador+vspeed, objWall, false, false);
		if (ceiling) {
			y = ceiling.y + ceiling.sprite_height + alturaJugador;
			vspeed = 0;
		}
	}
#endregion

// show_debug_message(state + action);
// show_debug_message(asset_get_index(state + action));

sprite_index = asset_get_index(state + action);



