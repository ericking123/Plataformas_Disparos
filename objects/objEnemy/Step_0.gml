if (wait <= 0) {
	sprite_index = sprEnemyRun;
	image_xscale = dir;
	scrMovement(dir, 0.7, width);

	if (dir == 1 && x >= x2) {
		dir = -1;
		sprite_index = sprEnemyIdle;
		wait = room_speed * 3;
	} else if (dir == -1 && x <= x1) {
		dir = 1;
		sprite_index = sprEnemyIdle;
		wait = room_speed * 3;
	}
} else {
	wait -= 1;
}
