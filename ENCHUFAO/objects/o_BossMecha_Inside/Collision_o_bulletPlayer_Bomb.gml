/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_BossMecha) 
{
	if (o_BossMecha.state != BOSS2STATE.START)
	{
		instance_destroy(other);
		
		hp -= 20*global.damageDealt;
		
		flashAlpha = 1;
	}
}


