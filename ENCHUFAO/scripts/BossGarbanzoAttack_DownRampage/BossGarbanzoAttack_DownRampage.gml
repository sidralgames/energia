// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoAttack_DownRampage()
{
	if instance_exists(o_playerShip)
	{
		contStop--
		if (stopping = false)
		{
			
			image_index = 1;
			bossSpeed = lerp(bossSpeed, 0, 0.09);
			
			speed = bossSpeed*global.relativeSpeed;
			
			if (speed  <=( 0.05*global.relativeSpeed ))
			{
				stopping = true;
				
			}
		}
		else if (stopping = true) && contStop <=0
		{
			if (attackingFast = false)
			{
				image_index = 5;
				diffX = choose(random_range(-50, 50));
				diffY = choose(random_range(350, 550));
				scale = 1;
				var a = point_direction(x, y, x+diffX,  y+diffY);
				direction = a;
				bossSpeed = stageSpeed+3;
				attackingFast = true;
			}
		
			bossSpeed = lerp(bossSpeed, 0, 0.008);
			
			speed = bossSpeed*global.relativeSpeed;
			
			if (attackingFast) && (speed > 3*global.relativeSpeed)
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