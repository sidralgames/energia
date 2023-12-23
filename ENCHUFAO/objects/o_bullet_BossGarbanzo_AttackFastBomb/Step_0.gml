/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
if (isBossGarbanzoBomb)
{
	enemyShooter = s_enemyMines;
	shooterTrail = true;
}
else
{
	enemyShooter = s_bossMechaActive
	shooterTrail = false;	
}

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()	
}
if (part = 0)
{
	part_particles_create(global.balaGarbanzo_sys, x, y, global.balaGarbanzo , 1)
}
else if (part = 1)
{
	part_particles_create(global.balaGreen_sys, x, y, global.balaGreen , 1)
}

image_angle = direction-90;

hp--;

if (hp <= 0)
{
	instance_destroy()
}


if (isEnemyBomb)
{
	speed=1.75 * global.relativeSpeed;
	
	if alarm[0]<=0
	{
		dire = dire*-1
		alarm[0] = 40;
	}
	
	direction+=4*dire;
}
else if (isMineBomb)
{	
	speed= 2 * min (1,  global.relativeSpeed+0.2);
	
	direction+=4*dire;
}
else if (isBossGarbanzoBomb)
{	
	speed=1.75 * global.relativeSpeed;
	
	if alarm[0]<=0
	{
		dire = dire*-1
		alarm[0] = 40;
	}
	direction+=6*dire;
}

