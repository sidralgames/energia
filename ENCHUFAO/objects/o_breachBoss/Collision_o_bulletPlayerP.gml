/// @description Insert description here
// You can write your code in this editor
tocado = true;
alarm[1] = 10;

if (initialHp <= 0) && (global.BossBreach_awaken) && maxHPLost > 0
{
	maxHPLost -= 1;
	global.BossBreach_HP -=1;
}
else
{
	initialHp -=1;
}
instance_destroy(other);



