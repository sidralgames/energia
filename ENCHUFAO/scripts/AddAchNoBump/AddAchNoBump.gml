// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddAchNoBump()
{
ds_map_add(global.achievementList, global.numberOfAch,
	{ 
		imageSprite: s_ach_NoBump,
		unlocked: global.achNoBump
	})

global.numberOfAch +=1;
}