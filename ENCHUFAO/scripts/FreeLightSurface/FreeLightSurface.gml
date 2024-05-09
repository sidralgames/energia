// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function FreeLightSurface()
{
	if instance_exists(oLight)
	{
		if surface_exists(oLight.light_surface)
		{
			surface_free(oLight.light_surface);
			
		}
	}
}