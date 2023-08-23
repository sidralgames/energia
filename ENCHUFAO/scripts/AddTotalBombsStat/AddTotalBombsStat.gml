// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddTotalBombsStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Bombs Dropped: " + string(global.totalBombs),
	})

global.numberOfStats +=1;
}