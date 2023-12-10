// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddHighScoreStat()
{
	ds_map_add(global.statsList, global.numberOfStats,
		{ 
			textStat: "Hi-Score: " + string(global.HighScore),
		})

	global.numberOfStats +=1;
}