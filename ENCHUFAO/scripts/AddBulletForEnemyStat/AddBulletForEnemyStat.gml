// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddBulletForEnemyStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Bullets To Kill 1 Enemy: " + string(round(global.totalBullets / global.enemiesKilledTotalAch)),
	})

global.numberOfStats +=1;
}