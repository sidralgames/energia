// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddTotalBumpsStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Bumps On The Wall: " + string(global.totalBumps),
	})

global.numberOfStats +=1;
}