// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function AddExplosionBlue()
{
	ds_map_add(global.explosionList, global.totalNumberOfExplosions,
	{ 
		alias: "Blue",
		sprite: s_exploBlue,
		number: 0,
		group: "Explosions"
	})

	global.totalNumberOfExplosions +=1;
}
