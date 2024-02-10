/// @description Insert description here
// You can write your code in this editor
if (other.isFrom = "PlayerBomb")
{
	if (global.bombIsHomingBomb)
	{
		_hp -= 0.5 *global.damageDealt;	
	}
	else
	{
		_hp -=5 *global.damageDealt;
	}
}
else
{
	_hp -=5;
}



