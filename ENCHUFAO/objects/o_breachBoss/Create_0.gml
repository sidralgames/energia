/// @description Insert description here

// You can write your code in this editor

event_inherited();

_hp = global.BossBreach_HP;

imageSpeed = 0.5;

tocado = false;

spriteStart = s_breachBoss;
spriteIdle = s_breachBoss_Idle;
spriteAttack = s_breachBoss_Attack;

startTime = 60;

imageChanged = false;

idleTime = 120;

inScreenTime = random_range(700, 800);

sprite_index = spriteStart;

image_speed = imageSpeed;

alarm[0] = inScreenTime;
alarm[3] = startTime;

attackTime = 400;


enum BOSSBREACHSTATE
{
	START,
	IDLE,
	FADING,
	ATTACKONE,
	ATTACKTWO
}
state = BOSSBREACHSTATE.START;

if (global.BossBreach_awaken = false)
{
	initialHp = 10;
}
else
{
	initialHp = 0;
}
offset = 0;

maxHPLost = 25;