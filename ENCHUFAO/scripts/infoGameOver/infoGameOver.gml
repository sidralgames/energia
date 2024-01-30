// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function infoGameOver(argument0)
{
	switch(argument0)
	{
		case 0: text = "You have killed " + string(global.enemiesKilled) + " enemies"; break;
		case 1: text = string(global.playerBumps) + " Bumps on the wall"; break;
		case 2: text = string(global.shootsFired) + " Bullets fired"; break;
		case 3: text = "You dropped " + string(global.bombsFired) + " bombs"; break;
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
		case 19: text = "..."; break;
		case 20: text = "Combine batteries"; break;
		case 21: text = "Ouch!"; break;
		case 22: text = "Ups..."; break;
		case 23: text = "No problem"; break;
		case 24: text = "Use the SlowMo"; break;
		case 25: text = "Tip: Keep an eye on your ammo"; break;
		case 26: text = "Open capsules"; break;
		case 27: text = "Choose your upgrades wisely"; break;
		case 28: text = "Don't give up"; break;
		case 29: text = "You can do this!"; break;
		case 30: text = "Damn!"; break;
		case 31: text = "Tip: Think"; break;
		case 32: text = "Remember: Batteries are good"; break;
		case 33: text = "Tip: Use enemy bombs against them"; break;
		case 34: text = "Tip: Use lasers against enemies"; break;
		case 35: text = "Remember: lasertraps kill enemies"; break;
		case 36: text = "Sorry"; break;
		case 37: text = " :( "; break;
		case 38: text = "It got crazy"; break;
		case 39: text = "Use SlowMo for narrow turns"; break;
		case 40: text = "Bomb everything"; break;
		case 41: text = "Shoot first, ask later"; break;
		case 42: text = "Bullets doesn't work? Try something different"; break;
		
		
		
	}
}