/// @description Insert description here
// You can write your code in this editor
if (other.spin >= other.spinIdle+0.1) && (_hp > 0) && (Metal.isVisible = false)
{
	if instance_exists(worm)
	{
		_hp -= 1;
		global.BossWormHP -=1;
	}
	
	flashAlpha = 1;
}


