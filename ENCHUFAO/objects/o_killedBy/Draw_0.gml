/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_alpha = o_gameOver.image_alpha;

if global.spriteKilledBy = s_torreta
{
	current = dsin(timer * frequency) * amplitude + midpoint;
	timer++;
	image_angle=current;
}

draw_set_font(global.customFont16);
draw_set_halign(fa_center);

draw_set_color(global.lightBlue);
draw_text(__view_get( e__VW.XView, 0 )+329,__view_get( e__VW.YView, 0 )+181,"Killed by: ");

draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+330,__view_get( e__VW.YView, 0 )+180,"Killed by: ");

if (drawsprite)
{
	if (global.spriteKilledBy != noone)
	{
		draw_sprite_ext(global.spriteKilledBy, image_index, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+245,1,1, image_angle, image_blend, o_gameOver.image_alpha)
	}
}

// ----- PARTICLES?----//
if (global.FinalTrail = true)
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

//DrawUpgradeNames();	
		
//DrawStatsUpgrades();

DrawKilledByEnemy();


