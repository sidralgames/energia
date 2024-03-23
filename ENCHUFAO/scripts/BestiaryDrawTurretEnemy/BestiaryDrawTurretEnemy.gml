// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BestiaryDrawTurretEnemy() //sprite, image, xoff, yoff,rot,color,alpha)
{
	
	contDisp --;
	if (contDisp <= 0)
	{
	
		current_recoil = 7;
	
		var bala = instance_create (initialX+lengthdir_x(28,rot)*xScale,-8+initialY+lengthdir_y(28,rot)*xScale,o_bulletTorreta);
		if (xScale = 1)
		{
			bala.direction = rot;
		}
		else
		{
			bala.direction = rot-180;
		}
		contDisp = random_range(100, 200)
	}
	
	current_recoil = max(0,floor(current_recoil*0.8));
	current = dsin(timer * frequency) * amplitude + midpoint;
	timer++;
	rot=current;
			
	if (wallMouth = false)
	{
		SetHUE();
		wallMouth = true;
		wall = instance_create_layer(__view_get( e__VW.XView, 0 )+317,__view_get( e__VW.YView, 0 )+initialY,"PauseHUE_Sub",o_wallGameOver);
		wall.image_index = 1;
	}
			
	if instance_exists(wall)
	{
		wall.image_alpha = alphaInfo;
		wall.x = __view_get( e__VW.XView, 0 )+initialX;
	}
	
	
	if (xScale = 1)
	{
		
	draw_sprite_ext(s_torreta, 0,initialX-lengthdir_x(current_recoil,rot),
    -8+initialY-lengthdir_y(current_recoil,rot), xScale, image_yscale, rot, image_blend, alphaInfo);
	}
	else
	{
		draw_sprite_ext(s_torreta, 0,initialX-lengthdir_x(-current_recoil,rot),
    -8+initialY-lengthdir_y(-current_recoil,rot), xScale, image_yscale, rot, image_blend, alphaInfo);
	}
	//BestiaryDrawEnemy(enemy.sprite, 0, -lengthdir_x(current_recoil,rot), -lengthdir_y(current_recoil,rot), rot, c_white, alphaInfo, false);
	
	
}