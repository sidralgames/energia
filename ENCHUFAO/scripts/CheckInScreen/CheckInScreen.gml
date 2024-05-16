// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckInScreen(_extraArea, _time)
{
	checkInScreen --;

	if (checkInScreen <= 0)
	{
		inScreen = point_in_rectangle(x,y,
		__view_get( e__VW.XView, 0 ) + 0 - _extraArea,
		__view_get( e__VW.YView, 0 ) + 0 - _extraArea,
		__view_get( e__VW.XView, 0 ) + 640 + _extraArea,
		__view_get( e__VW.YView, 0 ) + 360 + _extraArea) 

		checkInScreen = _time;
	}
}