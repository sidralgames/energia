/// @description Insert description here
if (other.spin >= other.spinIdle+0.1)
{
	if instance_exists(worm)
	{
		worm._hp -= 1;
	}
	
	flashAlpha = 1;
}




