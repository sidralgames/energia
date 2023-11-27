/// @description Insert description here
// You can write your code in this editor
/// @description Draw the simulation
if (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710)
{
	if (y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)
	{
		if (verletSystemExists(verletSystem1)) 
		{
			verletSystem1.draw();
		}
	}
}


