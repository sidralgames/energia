// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyDeathShake()
{
	if (x > __view_get( e__VW.XView, 0 )-50) && (x < __view_get( e__VW.XView, 0 )+690)
	{
		if (y > __view_get( e__VW.YView, 0 )-50) && (x < __view_get( e__VW.YView, 0 )+410)
		{
			screenShake(2,5);
		}
	}
}