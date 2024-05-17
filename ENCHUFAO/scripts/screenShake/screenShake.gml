// (magnitudes,frames) distance, 60f= 1sec
if instance_exists(o_camera)
{
	with (o_camera)
	{
		if (argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = argument0;
			shakeLenght = argument1;
			angleRemain = argument2;
			angleMagnitude = argument2;
			if argument2 = undefined
			{
				angleRemain = global.standardAngleShake;
				angleMagnitude = global.standardAngleShake;
			}
		}
	}
}