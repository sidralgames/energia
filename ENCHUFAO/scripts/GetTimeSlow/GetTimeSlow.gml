// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetTimeSlow()
{
	///////////
	var hour = string_format(global.slowmilisecs/60 div (60 * 60),2,0);
	var minute = string_format(global.slowmilisecs/60 div 60 mod 60,2,0);
	var second = string_format(global.slowmilisecs/60 mod 60,2,0);
	timestr = string_replace_all(hour + ":" + minute + ":" + second," ","0");
	return timestr;
}