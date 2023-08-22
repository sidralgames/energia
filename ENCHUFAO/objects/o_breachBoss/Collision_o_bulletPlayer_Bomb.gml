/// @description Insert description here
// You can write your code in this editor

tocado = true;
alarm[1] = 10;

if (initialHp <= 0) && (global.BossBreach_awaken) && maxHPLost > 0
{
	maxHPLost -= 20;
	global.BossBreach_HP -=20;
}
else
{
	initialHp -=20;
}
instance_destroy(other);

