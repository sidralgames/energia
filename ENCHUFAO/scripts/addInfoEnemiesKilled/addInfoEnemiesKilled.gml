// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addInfoEnemiesKilled()
{
ds_map_add(global.InfoList, global.numberOfInfos,
	{ 
		info: global.enemiesKilled
		
	})
global.numberOfInfos +=1;
}