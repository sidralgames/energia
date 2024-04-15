/// @description Insert description here
// You can write your code in this editor

if (!tile_meeting(x,y,"Tiles"))
{
	instance_destroy();
	chipToCreate = instance_create_layer(x,y,"Enchufes",o_temporaryPickUp);
	chipToCreate._sprite = chipSprite;
	chipToCreate._hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
	chipToCreate._vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))
}



