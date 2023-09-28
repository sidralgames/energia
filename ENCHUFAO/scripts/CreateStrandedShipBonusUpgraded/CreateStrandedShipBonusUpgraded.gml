// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateStrandedShipBonusUpgraded()
{
if (global.strandedShipGreen)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y+=2;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer;
		
	}
	if (global.strandedShipBlue)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y-=2;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Blue;
	}
	if (global.strandedShipPurple)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y+=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Purple;
	}
	if (global.strandedShipDark)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y-=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Dark;
	}
	if (global.strandedShipRed)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.chargedInEnergy = true;
		stranded.x+=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Red;
	}
	if (global.strandedShipMP3)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_strandedShip);
		stranded.createdStranded = false;
		stranded.chargedInEnergy = true;
		stranded.x+=8;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_mp3;
	}
}