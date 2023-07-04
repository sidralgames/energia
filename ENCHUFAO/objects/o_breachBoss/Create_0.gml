/// @description Insert description here
// You can write your code in this editor
_hp = global.BossBreach_HP;
imageSpeed = 0.5;
tocado = false;
image_speed = imageSpeed;

alarm[0] = random_range(200, 600); //inScreenTime


enum BOSSBREACHSTATE
{
	START,
	IDLE,
	ATTACKONE,
	ATTACKTWO
}

if (global.BossBreach_awaken = false)
{
	initialHp = 25;
}
else
{
	initialHp = 0;
}
offset = 0;

maxHPLost = 25;