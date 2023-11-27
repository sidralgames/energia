/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += _hpush*2*global.relativeSpeed;


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
		EnemyDeathShake();
		
		global.XPpoints +=30;
		explo = instance_create(x,y,o_explo2)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		if (state = 1)
		{
			with (o_playerShip)
				{
					trapped = false;
					Unplug();
				}
				
				o_charger.overcharged = true;
				o_charger.alarm[0] = 300;
		}
		
		instance_destroy();
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
			}
		
		}break;
	
		case 1: //CLOSED
		{
			depth = layer_get_depth("Cable")-2;
			sprite_index = sprite_attack;
			image_speed = 0.5;
			
			o_playerShip.trapped = true;
		
			contClosed --;
		
			if (image_index >= 8)
			{
				image_speed = 0;
			}
		
			if (contClosed <= 0)
			{
				state = 0;
			
				with (o_playerShip)
				{
					trapped = false;
					Unplug();
				}
				
				o_charger.overcharged = true;
				o_charger.alarm[0] = 300;
			}
		
		}break;
	}
}
