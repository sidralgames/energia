// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function KilledByDrawEnemy(_name, _info, _range)
{
	if (deathCounted = false)
	{
		deathCounted = true;
		enemy.killedByNum+=1;
	}
	
	if (drawsprite)
	{
		if (global.numEnemyKilledBy != noone)
		{
			GameOverDrawSprite(enemy.sprite, 0)
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