/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();
PETAType = isPETA;
fromFriend = false;
soundDie = false;
bnc = 1;
contToBeInside = 0;
backToTile = false;
spinDir = choose(-1,1);
//if room = Sala_0
//{
//	if (global.PETAsActive >= 3) && (bornFromBreach)
//	{
//		instance_destroy();
//	}
//	else
//	{
//		global.PETAsActive+=1;
//	}
	
//}
//else
//{
//	if (global.PETAsActive >= 6)
//	{
//		instance_destroy();
//	}
//	else
//	{
//		global.PETAsActive+=1;
//	}
//}

_hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
_vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))

if (global.biggerPetasIsUpgraded)
{
	maxCharge = global.PETACharge + 150;
	scale = 1.17;
}
else
{
	maxCharge = global.PETACharge;
}