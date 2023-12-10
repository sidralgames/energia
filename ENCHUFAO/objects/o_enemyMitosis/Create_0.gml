/// @description Insert description here
// You can write your code in this editor
event_inherited();
type = collisionType.custom;
slowMoPickUps = choose(2,3);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;
_hp = 6;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = 1.55
enemySpeed = enemySpeedInitial;

precision= random_range(3,3.5);
speed=random(1)+2;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyFastXP;

direction_ =direction;

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

xStart = x;
yStart = y;
maxDistance = 100;
waitingSpeed = random_range(0.7,1)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

isMega = irandom(5);
oddsBattery = 2;

if (isMega = 0)
{
	isMegaEnemy = true;
	global.MegaEnemiesInLevel+=1;
	_hp = 9;
	sprite_index = s_enemyMitosis_Mega;
	
	if (global.BatteriesInLevel <= global.BatteriesInLevel_Max)
	{
		if irandom(oddsBattery) = oddsBattery
		{
			cable = instance_create_layer(x,y,"Cable", o_enemyCable);
			global.BatteriesInLevel+=1;
		}
	}
}

//hasShield = irandom(5);

//if (hasShield = 0)
//{
//	CreateShieldEnemy(8, 0.6, s_shieldPurple); //hp, scale, sprite
//}