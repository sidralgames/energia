// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddTotalConnectedTimeStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "Plugged Time: " + GetTimeConnected() //global.realHourSlow) + ":" + string(global.realMinutSlow) + ":" + string(global.realSecsSlow),
	
	})

global.numberOfStats +=1;
}