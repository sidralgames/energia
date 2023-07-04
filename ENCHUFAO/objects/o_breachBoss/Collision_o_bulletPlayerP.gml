/// @description Insert description here
// You can write your code in this editor
tocado = true;
alarm[1] = 10;
maxHPLost -= 1;
if (initialHp <= 0)
{
	global.BossBreach_HP -=1;
}
else
{
	initialHp -=1;
}
instance_destroy(other);

if (state != BOSSBREACHSTATE.START)
{
	if (global.BossBreach_HP > 50)
	{
		state = BOSSBREACHSTATE.ATTACKONE;	
	}
	else
	{
		state = BOSSBREACHSTATE.ATTACKTWO;
}
}

