// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddEnemiesKilledStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Total Enemies Killed: " + string(global.enemiesKilledTotalAch),
	})

global.numberOfStats +=1;
}