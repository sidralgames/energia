// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckBossFading()
{
	if (alarm[0] <= 0) || (maxHPLost <= 0)
	{
		sprite_index = spriteStart;
		image_index = 27;
		state = BOSSBREACHSTATE.FADING;
	}
}