#region Colision Plataforma
	scrCheckPlataformCollision(width);
#endregion

#region Gravedad
	scrCheckGravity(width);
	if (vspeed > 0) {
		scrCheckGroundCollision(width);
	} else if (vspeed < 0) {
		scrCheckCellingCollision(width, height);
	}
#endregion

#region Cambiar Sprite
	scrUpdateSprite();
#endregion