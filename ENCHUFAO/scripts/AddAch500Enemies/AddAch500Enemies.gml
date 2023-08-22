// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddAch500Enemies()
{
ds_map_add(global.achievementList, global.numberOfAch,
	{ 
		imageSprite: s_ach_500Enemies,
		unlocked: global.ach500Enemies
		
	})

global.numberOfAch +=1;
}