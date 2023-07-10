// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeAmmo()
{
ds_map_add(global.swordTypes, global.numberOfSwords,
	{ 
		trackList: global.tracks,
		swordName: "Standard",
		obj: o_sword_standard,
		active: true,
		recogida: true,
		mp3Image: s_mp3,
		swordMP3Image: s_mp3SwordPeq,
		screenMp3: s_screenMp3,
		screenSwordMp3: s_screenMp3SwordPeq,
		skill: 1.0
		
	})

global.numberOfSwords +=1;
}