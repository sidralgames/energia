// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ChooseEnemyBestiaryPosition(){
if (positionChoosed == false)
	{
		for (var i=0; i<2; i++)
		{
			_x[i] = choose(random_range(20,40),-random_range(20,40))
			_y[i] = 220+choose(random_range(20,40),-random_range(20,40))
		}
		
		positionChoosed = true;
	}
	
	
	for (var i=0; i<2; i++)
	{
		draw_sprite_ext(argument0, image_index, __view_get( e__VW.XView, 0 )+initialX+_x[i],__view_get( e__VW.YView, 0 )+_y[i], xScale,1,0,image_blend, image_alpha)
		
		contParts --;
		
		if (trailCreated = false)
		{
			part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX+_x[i] - 4*xScale, __view_get( e__VW.YView, 0 )+_y[i], global.EnemyKilledBy_part , 1)	
		}
		else
		{
			if (contParts <=0)
			{
				part_particles_create(global.EnemyKilledBy_sys, __view_get( e__VW.XView, 0 )+initialX+_x[i] - 4*xScale, __view_get( e__VW.YView, 0 )+_y[i], global.EnemyKilledBy_part , 1)	
				contParts = contPartsInitial;
			}
		}
	}

	if (trailCreated = false) && (contParts <= -60)
	{
		trailCreated = true
	}
}