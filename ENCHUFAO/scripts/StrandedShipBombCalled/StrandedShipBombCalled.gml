// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShipBombCalled()
{
	if (alarm[8] <= 0)
	{
		bomb = instance_create_layer(x,y, "Enemies", o_bulletPlayer_Bomb)
		bomb.scale = 0.75;
		bomb.image_blend = c_ltgray;
		bomb._hpush = -3*sign(hspeed);
		bomb._vpush = random_range(-1.5, 1.5)
		
		alarm[8] = random_range(120, 200)
	}
}