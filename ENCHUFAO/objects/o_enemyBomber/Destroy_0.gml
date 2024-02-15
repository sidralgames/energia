/// @description Insert description here
// You can write your code in this editor

CreateSlowmoParts();

if (isMegaEnemy)
{
	if instance_exists(cable)
	{
		instance_destroy(cable);
	}
}

CreateTemporaryChip(2);

// Inherit the parent event
event_inherited();

