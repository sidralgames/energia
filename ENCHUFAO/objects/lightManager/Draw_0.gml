/// @description Insert description here
// You can write your code in this editor


//------ PLAYER -----//
PlayerLightColor();

//----- ENCHUFES ----//
EnchufesLightColor();

//----- EXPLOSIONS ----//
ExplosionsLightColor();

//----- ENEMIES ----//
EnemiesLightColor();

//----- STRANDED SHIP ----//
StrandedShipLightColor();

//----- LIL CRUSHER -----//
LilCrusherLightColor();


with(o_steamPage)
	{
		off = random_range(0,0.2);
		if (isVisible)
		{
			
			draw_sprite_ext(s_steamPage, 0, x, y, 1, 1, 0, c_white, 0.90 + off);
		}
		
	}