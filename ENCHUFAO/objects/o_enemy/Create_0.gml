/// @description Insert description here
// You can write your code in this editor
event_inherited();

slowMoPickUps = choose(3,4);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;
_hp = 3;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = 1.25
enemySpeed = enemySpeedInitial;

precision= random_range(1,2);
speed=random(1)+2;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyStandardXP;

direction_ =direction;

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

xStart = x;
yStart = y;
maxDistance = 100;
waitingSpeed = random_range(0.4,0.7)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);




if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

isMegaEnemy = false;
isMega = irandom(4);
oddsBattery = 2;

if (isMega = 0) && (room != Sala_Inicio)
{
	isMegaEnemy = true;
	global.MegaEnemiesInLevel+=1;
	_hp = 15;
	
	if (global.BatteriesInLevel < global.BatteriesInLevel_Max)
	{
		if irandom(oddsBattery) = oddsBattery
		{
			cable = instance_create_layer(x,y,"Cable", o_enemyCable);
			global.BatteriesInLevel+=1;
		}
	}
	
	sprite_index = s_enemyBasicMega;
}


hasShield = irandom(10);

if (hasShield = 0)
{
	CreateShieldEnemy(15, 0.75, s_shieldPurple); //hp, scale, sprite
}


