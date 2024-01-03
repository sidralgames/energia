// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateStrandedShipStandard()
{
if (global.strandedShipGreen)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y+=2;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipGreenHP;
		
	}
	if (global.strandedShipBlue)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y-=2;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Blue;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipBlueHP;
	}
	if (global.strandedShipPurple)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y+=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Purple;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipPurpleHP;
	}
	if (global.strandedShipDark)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.y-=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Dark;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipDarkHP;
	}
	if (global.strandedShipRed)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.chargedInEnergy = true;
		stranded.x+=6;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_Red;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipRedHP;
	}
	if (global.strandedShipMP3)
	{
		stranded = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Shield", o_strandedShip);
		stranded.createdStranded = false;
		stranded.chargedInEnergy = true;
		stranded.x+=8;
		stranded.chargedInEnergy = true;
		stranded.chargedInHp = true;
		stranded.chargedInAmmo = true;
		stranded.sprite = splayer_mp3;
		stranded.hpMax = 4;
		stranded.hp = global.strandedShipMP3HP;
	}
}