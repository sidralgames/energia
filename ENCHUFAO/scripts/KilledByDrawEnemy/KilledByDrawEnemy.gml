// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function KilledByDrawEnemy(_name, _info, _range, _trail, _image)
{
	
	if (_trail = true)
	{
		if (image_alpha>=0.5)
		{
			contParts --;
			if (contParts <=0)
			{
				part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+320 - (sprite_width/4), __view_get( e__VW.YView, 0 )+245, global.EnemyKilledBy_part , 1)
				contParts = contPartsInitial;
			}
		}
	}
	
	if (deathCounted = false)
	{
		deathCounted = true;
		enemy.killedByNum+=1;
	}
	
	if (drawsprite)
	{
		if (global.numEnemyKilledBy != noone)
		{
			GameOverDrawSprite(enemy.sprite, _image)
		}
	}
	
	draw_set_font(global.customFont14);
	draw_set_color(global.brightRed);
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,string(_name));
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,string(_name));
		
	if (tipChoosed = false)
	{
		tipChoosed = true;
		tip = _range
	}
	
	_info(tip);
	
	draw_set_font(global.customFont12);
	draw_set_color(global.lightBlue)
	draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))

}