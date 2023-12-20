/// @description Insert description here
// You can write your code in this editor
x = __view_get( e__VW.XView, 0 )+320;
y = __view_get( e__VW.YView, 0 )+170;
image_alpha = 0;


//-----Check HighScore----///
if (global.HighScore < global.XPpoints)
{
	global.HighScore = global.XPpoints;
}

if (room != Sala_Tutorial)
{
	global.playTimes +=1;
}
