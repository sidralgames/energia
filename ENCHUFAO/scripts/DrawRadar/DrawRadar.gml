// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawRadar()
{
	radiusRadar = 42;
	
	if instance_exists(o_enchufeStandard_Father)
	{
		if instance_exists(o_enchufe)
		{
			if (global.energyRadar) || (global.activatedEnergyRadar)
			{
				enchufeEnergyDir = point_direction(x,y,o_enchufe.x, o_enchufe.y)
				if (point_distance(x,y,o_enchufe.x,o_enchufe.y) > 60)
				{
					draw_sprite_ext(s_radar,0,x+lengthdir_x(radiusRadar,enchufeEnergyDir), y+lengthdir_y(radiusRadar,enchufeEnergyDir),1,1,enchufeEnergyDir,image_blend, image_alpha)
				}
			}
		}
		
		if instance_exists(o_enchufe_Hp)
		{
			if (global.hpRadar) || (global.activatedHPRadar)
			{
				enchufeHPDir = point_direction(x,y,o_enchufe_Hp.x, o_enchufe_Hp.y)
				if (point_distance(x,y,o_enchufe_Hp.x,o_enchufe_Hp.y) > 60)
				{
					draw_sprite_ext(s_radar,1,x+lengthdir_x(radiusRadar,enchufeHPDir), y+lengthdir_y(radiusRadar,enchufeHPDir),1,1,enchufeHPDir,image_blend, image_alpha)
				}
			}
		}
		
		if instance_exists(o_enchufe_Ammo)
		{
			if (global.ammoRadar) || (global.activatedAmmoRadar)
			{
				enchufeAmmoDir = point_direction(x,y,o_enchufe_Ammo.x, o_enchufe_Ammo.y)
				if (point_distance(x,y,o_enchufe_Ammo.x,o_enchufe_Ammo.y) > 60)
				{
					draw_sprite_ext(s_radar,2,x+lengthdir_x(radiusRadar,enchufeAmmoDir), y+lengthdir_y(radiusRadar,enchufeAmmoDir),1,1,enchufeAmmoDir,image_blend, image_alpha)
				}
			}
		}
		
		if instance_exists(o_enchufe_Laser)
		{
			if (global.laserRadar) || (global.activatedLaserRadar)
			{
				enchufeLaseDir = point_direction(x,y,o_enchufe_Laser.x, o_enchufe_Laser.y)
				if (point_distance(x,y,o_enchufe_Laser.x,o_enchufe_Laser.y) > 60)
				{
					draw_sprite_ext(s_radar,3,x+lengthdir_x(radiusRadar,enchufeLaseDir), y+lengthdir_y(radiusRadar,enchufeLaseDir),1,1,enchufeLaseDir,image_blend, image_alpha)
				}
			}
		}
	}
}