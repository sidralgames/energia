/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if instance_exists(o_menuScores)
{
	xscale = o_menuScores.xScale;
	cable =  instance_create_layer(x,y,"PauseHUE_sub", o_BossWorm_BodyBestiary);

cable._color = _colorBody;
}
else
{
	cable =  instance_create_layer(x,y,"PauseHUE_sub", o_BossWorm_BodyGameOver);
}







