/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
Controls_Input();

draw_self();

if instance_exists(o_menuScores)
{
	if (key_leftP) || (key_rightP)
	|| (key_upP) || (key_downP) || (key_back)
	{
		instance_destroy(o_enemy_Mouth);
		instance_destroy(o_mouthAnchor);
		instance_destroy();
	}
}



