/// @description Insert description here
// You can write your code in this editor
if (hittedByBomb = false) && (o_BossMecha.state = BOSS2STATE.IDLE) && (o_BossMecha.recoverTime <=0)
{
	hittedByBomb = true;
	hp-=20;
	alarm[0] = 30;
}





