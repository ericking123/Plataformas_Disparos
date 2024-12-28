var distWeapon = 5;

if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= distWeapon) {
	with (other) {
		instance_destroy();
	}
	state = other.weapon;
}
