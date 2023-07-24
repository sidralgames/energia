// Script assets have changed for v1.5.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/3600051.577377 for more information
function CreateSlowmoParts()
{
	for (i = 0; i < slowMoPickUps; i++)
	{
		slowmoPart = instance_create_layer(x,y,"Enchufes", o_slowMoPickUp)
		slowmoPart._hpush = random_range(-1.5,1.5);
		slowmoPart._vpush = random_range(-1.5,1.5);
	}
}