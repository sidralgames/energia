/// @description Insert description here
// You can write your code in this editor

if (global.bombIsHomingBomb)
{
	_hp -= 3 *global.damageDealt;
	instance_destroy(other);
}
else
{
	_hp = 0;
	instance_destroy(other);
}


