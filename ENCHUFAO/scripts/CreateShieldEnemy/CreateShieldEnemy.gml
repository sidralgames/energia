// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateShieldEnemy(_hp, _scale, _sprite)
{
	haveAShield = true;
	shield = instance_create_layer(x, y, "Enemies", o_shieldOfEnemy);
	shield._hp = _hp;
	shield.scale = _scale;
	shield.sprite_index = _sprite;
	shield.enemy = self;
	shield.enemyShooter = enemyBestiaryNumber;
	shield.shooterTrail = finalTrail;
}