// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function infoPause()
{
	switch(info)
	{
		case 0: text = "You have killed " + string(global.enemiesKilled) + " enemies"; break;
		case 1: text = string(global.playerBumps) + " Bumps on the wall"; break;
		case 2: text = string(global.shootsFired) + " Bullets fired"; break;
		case 3: text = "You have dropped " + string(global.bombsFired) + " bombs"; break;
		case 4: text = "Saved " + string(global.shieldsUsed) + " times by a shield"; break;
		case 5: text = string(global.hitsTaken) + " Hits taken"; break;
	}
}