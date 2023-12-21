// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function infoGameOver(argument0)
{
	switch(argument0)
	{
		case 0: text = "You have killed " + string(global.enemiesKilled) + " enemies"; break;
		case 1: text = string(global.playerBumps) + " Bumps on the wall"; break;
		case 2: text = string(global.shootsFired) + " Bullets fired"; break;
		case 3: text = "You have dropped " + string(global.bombsFired) + " bombs"; break;
		case 4: text = "Saved " + string(global.shieldsUsed) + " times by a shield"; break;
		case 5: text = string(global.hitsTaken) + " Hits taken"; break;
		case 6: text = "Tip: Do not get hit"; break;
		case 7: text = "Remember: L2 to slowmotion"; break;
		case 8: text = "Tip: Contain the breach"; break;
		case 9: text = "Tip: Keep an eye on your energy"; break;
		case 10: text = "Tip: Beware of lasers"; break;
		case 11: text = "Remember: L1 to bomb"; break;
		case 12: text = "Pick up batteries"; break;
		case 13: text = "Better luck next time"; break;
		case 14: text = "Tip: Do not waste P.E.T.As"; break;
		case 15: text = "That was intense"; break;
		case 16: text = "Another one"; break;
		case 17: text = "Noooooooooo!!"; break;
		case 18: text = "Try another ship"; break;
	}
}