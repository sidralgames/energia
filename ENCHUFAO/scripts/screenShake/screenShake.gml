// (magnitudes,frames) distance, 60f= 1sec
if instance_exists(o_camera)
{
	with (o_camera)
	{
		if (argument0 > shakeRemain)
		{
			outRemain = 2+random(3);
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLenght = argument1;
		}
	}
}