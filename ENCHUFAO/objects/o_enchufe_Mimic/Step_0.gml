/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

StatusConditionEnemy();

xConnectionPos= x;
yConnectionPos = y;

if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

image_angle += max(0.1*sign(_hpush), 2*(abs(_hpush)),0.1*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

_hpush = clamp(_hpush, -1.4, 1.4)
_vpush = clamp(_vpush, -1.4, 1.4)

if (flashAlpha>0)
{
	flashAlpha-=0.09;
}

if instance_exists(o_playerShip)
{
	if (_hp<=0)
	{
		killedByPlayer = true;
		
		EnemyDeathShake();
		
		global.XPpoints +=30;
		explo = instance_create(x,y,o_exploPurple)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		
		if (state = 1) && canDie = false
		{
			if (withStrandedShip)
			{
				charger.trapped = false;
				with (o_strandedShip)
				{
					if (state = STRANDEDSHIPSTATE.CONNECTEDENCHUFE)
					{
						DisconnectStrandedShip();
					}
				}
				
				contDie = 5;
				canDie = true;
			}
			else
			{
				with (o_playerShip)
				{
					trapped = false;
					Unplug();
					o_charger.overcharged = true;
					o_charger.alarm[0] = 300;
				}
				
				contDie = 5;
				canDie = true;
			}
			
		}
		else
		{
			instance_destroy();
		}
		
		
	}
	
	switch (state)
	{
		case 0: //MIMIC
		{
			depth = layer_get_depth("Enchufes");
			sprite_index = _sprite;
			image_speed = 0.5;
		
			if (o_playerShip.plugged) && (enchufeActive)
			{
				state = 1;	
				image_index = 0;
				contClosed = random_range(400, 500);
				o_playerShip.trapped = true;
			}
			
			if (withStrandedShip)
			{
				state = 1;	
				image_index = 0;
				contClosed = random_range(400, 500);
				charger = instance_nearest(x,y,o_chargerStrandedShip);
				charger.trapped = true;
			}
		
		}break;
	
		case 1: //CLOSED
		{
			depth = layer_get_depth("Cable")-2;
			sprite_index = sprite_attack;
			image_speed = 0.5;
		
			if !withStrandedShip
			{
				contClosed --;
			}
		
			if (image_index >= 8)
			{
				image_speed = 0;
			}
		
			if (contClosed <= 0)
			{
				
			
				with (o_playerShip)
				{
					trapped = false;
					Unplug();
				}
				
				o_charger.overcharged = true;
				o_charger.alarm[0] = 300;
				
				state = 0;
			}
		
		}break;
	}
	
	if (canDie)
	{
		contDie--;
		if (contDie <=0)
		{
			instance_destroy();	
		}
	}
}
