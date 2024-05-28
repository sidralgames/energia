/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_BossMecha) 
{
	if (o_BossMecha.state != BOSS2STATE.START)
	{
		if (other.isFrom = "PlayerBomb")
		{
			if (hittedByBomb = false) &&
			(o_BossMecha.state = BOSS2STATE.ATTACK) ||
			((o_BossMecha.recoverTime >=0) && (o_BossMecha.image_index != 0))
			{
				hittedByBomb = true;
				hp-=10 * global.damageDealt;
				alarm[0] = 20;
				flashAlpha = 1;
			}
		}
	}
}




