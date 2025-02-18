/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (set = false) 
{
	y = lerp(y, 60,0.05);
	xx = x;
	yy = y;
	
	if (y >= 59)
	{
		set = true;
	}
}
else if (set = true)
{
	t = (t + increment) mod 360;
	shift = amplitude * dsin(t);


	//apply the shift
	x = xx + lengthdir_x(shift, direction +dir1);
	y = yy + lengthdir_y(shift, direction + dir1);	
}






