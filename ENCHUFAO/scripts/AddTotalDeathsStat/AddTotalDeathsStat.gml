// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddTotalDeathsStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Total Deaths: " + string(global.totalDeaths),
	})

global.numberOfStats +=1;
}