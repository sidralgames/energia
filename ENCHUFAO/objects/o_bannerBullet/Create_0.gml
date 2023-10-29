/// @description Insert description here
// You can write your code in this editor

image_speed = 0.8;
if (global.havePickedBouncingBullets)
{
	sprite_index = s_banner_Bouncing;
}
else if (global.havePickedBurningBullets)
{
	sprite_index = s_banner_Burning;
}
else if (global.havePickedSmartBullets)
{
	sprite_index = s_banner_Smart;
}
else if (global.havePickedSplitBullets)
{
	sprite_index = s_banner_Split;
}
else if (global.havePickedPushingBullets)
{
	sprite_index = s_banner_Push;
}
else if (global.havePickedExploBullets)
{
	sprite_index = s_banner_Explo;
}
else if (global.havePickedPiercingBullets)
{
	sprite_index = s_banner_Piercing;
}





