/// @description GANG SPAWN SECRET
// spawners
if (levelType = "Secret")
{
	switch(secretType)
	{
		case "Snipers":
		{
			GangSecret(SpawnEnemyBasicAndSniper);
		}
		break;
		
		case "Minis":
		{
			GangSecret(SpawnEnemyMini);
		}
		
		case "Worms":
		{
			GangSecretDoble(SpawnEnemyGripper, SpawnEnemyFreeWorm);
		}
		break;
	}
}

