/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)





if instance_exists(o_playerShip)
{
	if (o_playerShip.showEnergy)
	{
		draw_circular_bar(o_playerShip.x+23, o_playerShip.y-23, global.energy, global.energyMax, global.lightBlue, 7,1, 2);
		draw_circular_bar(o_playerShip.x+23, o_playerShip.y-23, global.energy, global.energyMax, c_white, 6,1, 2);
	}
}

if (!isPaused)
{

	UIPlayership();

	SlowMoIndicator();
	
	draw_set_color(c_white);

	LowEnergyWarning();

	UIBossBreach();
	
	UIBossGarbanzo();
	
	UIBossWorm();

	UIUnlockShip();

	UIPlayerDamage();
}