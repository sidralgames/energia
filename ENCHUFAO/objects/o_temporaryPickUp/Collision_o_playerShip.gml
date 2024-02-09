/// @description Insert description here
// You can write your code in this editor
switch(_sprite)
{
	case s_temporary_fireRate:
	{
		global.temporaryFireRate_Factor = 4;
		global.temporaryFireRate = 400;
		
	}break;
	
	case s_temporary_superShot:
	{
		
		global.superShot += 0.3;
		
		global.temporarySuperShot = 400;
		
	}break;
	
}

instance_destroy();







