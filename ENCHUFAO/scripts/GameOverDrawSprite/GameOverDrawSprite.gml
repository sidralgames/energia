// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawSprite(_sprite, _image, _rot) //sprite,x,y,image_index,image_angle
{
	draw_sprite_ext(_sprite, _image, __view_get( e__VW.XView, 0 )+320, __view_get( e__VW.YView, 0 )+245+off, 1,1,_rot,image_blend, image_alpha)
	
}
