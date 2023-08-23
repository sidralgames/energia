// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddTotalSlowMoTimeStat()
{
ds_map_add(global.statsList, global.numberOfStats,
	{ 
		textStat: "SlowMo Time: " + GetTimeSlow() //global.realHourSlow) + ":" + string(global.realMinutSlow) + ":" + string(global.realSecsSlow),
	})

global.numberOfStats +=1;
}