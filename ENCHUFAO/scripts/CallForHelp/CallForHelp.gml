// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CallForHelp()
{
	navesToCreate = 12;
	if (x > __view_get( e__VW.XView, 0 )+320)
	{
		dirStranded = 1;
		xpos = -70;
		
	}
	else
	{
		dirStranded = -1;
		xpos = 710;
	}
	
	for (var i=0; i<navesToCreate; i++)
	{
		spriteNave = choose(splayer, splayer_Blue, splayer_Dark, splayer_mp3, splayer_Purple, splayer_Red);
		
		stranded = instance_create_layer(__view_get( e__VW.XView, 0 )+xpos,__view_get( e__VW.YView, 0 )-30+(360/(navesToCreate-2))*i, "Main", o_strandedShip);
		stranded.dirHspeed = random_range(1,2)*dirStranded;
		stranded.xscale = 0.7;
		stranded.yscale = 0.7;
		stranded.called = true;
		stranded.createdStranded = false;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = spriteNave;
		stranded.hpMax = 4 + global.strandedHPUpgrade;
		stranded.hp = global.strandedShipGreenHP;
	}
}