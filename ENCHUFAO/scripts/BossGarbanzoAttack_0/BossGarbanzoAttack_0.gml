// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_0()
{
	if instance_exists(o_playerShip)
	{
		contStop--
		if (stopping = false)
		{
			
			image_index = 1;
			speed = lerp(speed, 0, 0.09)
			
			if (speed <=0.05)
			{
				stopping = true;
				
			}
		}
		if (stopping = true) && contStop <=0
		{
			if (attackingFast = false)
			{
				diffX = choose(random_range(-50, 50));
				diffY = choose(random_range(-50, 50));
				scale = 1;
				var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
				direction = a;
				if hp > 200
				{
					speed = 4;
				}else
				{
					speed = 5;
				}
				attackingFast = true;
			}
		
			speed = lerp(speed, 0, 0.005);
		
			if (attackingFast) && (speed > 3)
			{
				if (alarm[1] <= 0)
				{
					bullets = 6;
					for( i = 0; i < bullets; i++ )
					{
					    inst = instance_create( x+lengthdir_x(hspeed*2,direction), y-51-lengthdir_y(vspeed*2,direction), o_bullet_BossGarbanzo_AttackFast);
						if instance_exists(inst)
						{
						    inst.direction = i * (360 / bullets ) + offset;
							inst.direBullet = direBullet;
						}
					}
	
					offset=offset+12.25;
					direBullet = direBullet*-1;
					alarm[1] = 10
				}		
			}
			else
			{
				image_index = 0;	
			}
		}
	}
}