/// @description Draw the simulation
inScreen =  (x > __view_get( e__VW.XView, 0 )-150 && x < __view_get( e__VW.XView, 0 )+810) &&
(y > __view_get( e__VW.YView, 0 )-150 && y < __view_get( e__VW.YView, 0 )+510)

if (inScreen)
{
	if (verletSystemExists(verletSystem1)) 
	{
		verletSystem1.draw();
	}
}
