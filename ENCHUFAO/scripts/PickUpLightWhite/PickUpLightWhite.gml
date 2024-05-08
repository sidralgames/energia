// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PickUpLightWhite()
{
	with(oPickUp_Father)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.5 + off);
	}

	with(o_temporaryPickUp)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.5 + off);
	}
	
	with(o_ShieldpickUp)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.15+off, 0.15+off, 0, c_white, 0.5);
	}
}