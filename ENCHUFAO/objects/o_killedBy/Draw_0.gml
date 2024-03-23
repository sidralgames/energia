/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_alpha = o_gameOver.image_alpha;

if global.numEnemyKilledBy = s_torreta
{
	current = dsin(timer * frequency) * amplitude + midpoint;
	timer++;
	image_angle=current;
}

draw_set_font(global.customFont16);
draw_set_halign(fa_center);


//DrawUpgradeNames();	
		
//DrawStatsUpgrades();
if (global.killedByExplosion = true)
{
	GameOverDrawExplosion();
}
else
{
	DrawKilledByEnemy_2();
}

draw_set_font(global.customFont16);
draw_set_halign(fa_center);

draw_set_color(global.lightBlue);
draw_text(__view_get( e__VW.XView, 0 )+329,__view_get( e__VW.YView, 0 )+181,"Killed by: ");

draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+180,"Killed by: ");

