/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_self();


if instance_exists(o_menuScores)
{
	if (o_menuScores.drawWall = false)
	{
		draw_sprite_ext(s_wallBestiary, 0, __view_get( e__VW.XView, 0 )+o_menuScores.initialX,__view_get( e__VW.YView, 0 )+o_menuScores.initialY+o_menuScores.wallYoff, o_menuScores.xScale,1,0,c_white, o_menuScores.alphaInfo)
	}
}









