/// @description Insert description here
// You can write your code in this editor
if (other.canHaveAShield == true) && (other.haveAShield == false) 
&& (other.isShield == false)
{
	other.haveAShield = true;
	shield = instance_create_layer(other.x, other.y, "Enemies", o_shieldOfEnemy);
	shield.enemy = other;
	if (other.enemyIsMini)
	{
		shield.scale = 0.5;
		shield._hp = 4;
	}
	else
	{
		shield.scale = 0.8;
		shield._hp = 8;
	}
}






