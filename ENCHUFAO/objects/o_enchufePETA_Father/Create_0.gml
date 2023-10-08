/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
fromFriend = false
if room = Sala_0
{
	if (global.PETAsActive >= 3) && (bornFromBreach)
	{
		instance_destroy();
	}
	else
	{
		global.PETAsActive+=1;
	}
	
}
else
{
	if (global.PETAsActive >= 6)
	{
		instance_destroy();
	}
	else
	{
		global.PETAsActive+=1;
	}
}