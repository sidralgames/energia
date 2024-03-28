/// @description Insert description here
// You can write your code in this editor
if (contDiscount > 0)
{
	contDiscount --;
}
if (contDiscount <= 0)
{
	if (!discounted)
	{
		discounted = true;
		global.totalEnemiesOnLevel-=1;
	}
}

if (isOnlyDraw)
{
	if (setDraw = false)
	{
		setDraw = true;
		
		if (isMegaDraw)
		{
			enemyBestiaryNumber = global.enemyNibbladeBestiaryNumber;
			_hp = 7;
			sprite_index = s_enemyMouthMega;
			isMegaEnemy = true;

			cable = instance_create_layer(x,y,"PauseHUE", o_enemyMouth_BodyMega);
			cable._color = _colorBody;
		}
		else
		{
			enemyBestiaryNumber = global.enemyPincherBestiaryNumber;
			_hp = 7;
			sprite_index = s_enemyMouth;
			isMegaEnemy = true;

			cable = instance_create_layer(x,y,"PauseHUE", o_enemyMouth_Body);
			cable._color = _colorBody;
		}
	}
}
else
{
	if (megaStated = false)
	{
		megaStated = true;
		
		if (fromBullet = false)
		{
			if (canBeMega)
			{
				if (isMega = 0) 
				{
					enemyBestiaryNumber = global.enemyNibbladeBestiaryNumber;
					_hp = 7;
					sprite_index = s_enemyMouthMega;
					isMegaEnemy = true;
					if instance_exists(o_gameOver) || instance_exists(o_menuScores)
					{
						cable = instance_create_layer(x,y,"PauseHUE", o_enemyMouth_BodyMega);
						cable._color = _colorBody;
					}
					else
					{
						cable = instance_create_layer(x,y,"EnemiesHUE", o_enemyMouth_BodyMega);
					}
				}
				else
				{
					if instance_exists(o_gameOver) || instance_exists(o_menuScores)
					{
						cable = instance_create_layer(x,y,"PauseHUE", o_enemyMouth_Body);
						cable._color = _colorBody;
					}
					else
					{
						cable = instance_create_layer(x,y,"EnemiesHUE", o_enemyMouth_Body);
					}
				}
			}
			else
			{
				if instance_exists(o_gameOver) || instance_exists(o_menuScores)
				{
					cable = instance_create_layer(x,y,"PauseHUE", o_enemyMouth_Body);
					cable._color = _colorBody;
				}
				else
				{
					cable = instance_create_layer(x,y,"EnemiesHUE", o_enemyMouth_Body);
				}
			
			}
		}
		else
		{
			cable = instance_create_layer(x,y,"EnemiesHUE", o_enemyMouth_Body);
		
		}
	}
}
		
event_inherited();

image_speed = 0.5 * global.relativeSpeed;

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

switch(state)
{
	case ENEMYSTATE.WAITING: Enemy_WaitingAnchored(); break;	
	case ENEMYSTATE.CHASING: Enemy_ChasingAnchored(); break;
	case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
}

if (_hp <= 0) || !instance_exists(anchor)
{
	EnemyDeathShake();
	
	if instance_exists(o_playerShip)
	{
		global.XPpoints +=enemyXP;
	}
	
	explo = instance_create(x,y,o_exploPurple);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}