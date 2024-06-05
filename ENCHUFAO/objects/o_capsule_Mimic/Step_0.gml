/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//if instance_exists(o_playerShip)
//{
//	inScreen = point_distance(x,y,o_playerShip.x, o_playerShip.y) < global.offRangeDistance_Enemy;
//}

StatusConditionEnemy();

xConnectionPos = x;
yConnectionPos = y;

if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

if (scale < 1)
{
	scale+=0.1
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
	switch (state)
	{
		case 0: //MIMIC
		{
			depth = layer_get_depth("Enchufes");
			sprite_index = _sprite;
			image_speed = 0.4;
		
			if (o_playerShip.plugged) && (enchufeActive)
			{
				state = 1;	
				image_index = 0;
				contClosed = contClosedMax;
				o_playerShip.trapped = true;
			}
			
			if (withStrandedShip)
			{
				state = 1;	
				image_index = 0;
				contClosed = contClosedMax;
				charger = instance_nearest(x,y,o_chargerStrandedShip);
				charger.trapped = true;
			}
		
		}break;
	
		case 1: //CLOSED
		{
			//depth = layer_get_depth("Cable")-2;
			sprite_index = sprite_attack;
			image_speed = 0.9;
		
			if !withStrandedShip
			{
				contClosed --;
			}
		
			if (contClosed <= 0)
			{
				with (o_playerShip)
				{
					trapped = false;
					Unplug();
				}
				
				_hp = 0;
			
				o_charger.overcharged = true;
				o_charger.alarm[0] = 300;
				
				state = 0;
			}
		
		}break;
	}
	
	if (_hp<=0)
	{
		killedByPlayer = true;
		
		isPluggable = false;
		
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
				image_index = 0;
				sprite_index = s_CapsuleBrain;
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
				image_index = 0;
				sprite_index = s_CapsuleBrain;
			}
		}
		else
		{
			if (canDie = false)
			{
				contDie = 5;
				canDie = true;
				image_index = 0;
				sprite_index = s_CapsuleBrain;
			}
		}
	}
	
	if (canDie)
	{
		image_speed = 0.5;
		
		sprite_index = s_CapsuleBrain;
		contDie--;
		
		if (contDie <=0) && (image_index >= 20)
		{
			
			instance_destroy();
			ebomb = instance_create(x,y,o_exploBomb);
			ebomb.scale = 1.8;
			ebomb.scale = 1.8;
			ebomb.damagePlayer = true;
			ebomb.isFrom = "EnemyBomb";
			ebomb.sprite_index = s_exploPurple;
			ebomb.scaleShockwave = 0.25;
			ebomb.scaleShake = 0.7;
			shock = instance_create(x,y,o_shockwaveTiles)
			shock.scale = 0.85;

			bullets = 8;
			for( var i = 0; i < bullets; i++ )
			{
			   inst = instance_create_layer( x, y, "Enemies", o_bullet_BossGarbanzo_AttackFastBomb);
				if instance_exists(inst)
				{
				    inst.direction = i * (360 / bullets ) + offset;
					inst.hp = 25;
					inst.isEnemyBomb = true;
					//inst.dire = choose(1, -1);
				}
			}

		}
	}
}
