/// @description Insert description here
// You can write your code in this editor
_angle = 0;
image = choose(0,1,2,3,4)


_sprite = choose(s_chipInTileSuper, s_chipInTileRate ,s_chipInTileLaser)

switch (_sprite)
{
	case s_chipInTileSuper: 
	{
		chipSprite = s_temporary_superShot;
		
	}break;
	
	case s_chipInTileRate: 
	{
		chipSprite = s_temporary_fireRate;
		
	}break;
	
	case s_chipInTileLaser: 
	{
		chipSprite = s_temporary_laser;
		
	}break;
	
}
	
sprite_index = _sprite;
if collision_circle(x,y,70, o_ChipinTile, false, true)
{
	instance_destroy();	
}




