// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Idle()
{
	recoverTime--;
	if recover = false && recoverTime <= 0
	{
		contIdl --;
		image_index = 0;
	}
	bossSpeed = lerp(bossSpeed,0.75, 0.005);
	speed = bossSpeed*global.relativeSpeed;
	
	if (alarm[4] <= 0)
	{
		diffX = choose(random_range(-250, 250));
		diffY = choose(random_range(-250, 250));
		alarm[0] = random_range(90, 160)
	}
	
	if instance_exists(o_playerShip)
	{
		var a = point_direction(x, y, o_playerShip.x+diffX,  o_playerShip.y+diffY);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
	}
	
	if instance_exists(o_playerShip)
	{
		BossGarbanzoChooseAttack()
	}
}