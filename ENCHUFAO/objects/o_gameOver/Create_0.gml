/// @description Insert description here
// You can write your code in this editor
killedBy = instance_create_layer(x,y,"Pause", o_killedBy);
contPartsInitial = 3;
contParts = contPartsInitial;
depth = layer_get_depth("Main") -1;
x = __view_get( e__VW.XView, 0 )+320;
y = __view_get( e__VW.YView, 0 )+70;
image_alpha = 0;
info = irandom(18);
info2 = (info + irandom(18)) mod 18;
text = "";

//-----Check HighScore----///
if (global.HighScore < global.XPpoints)
{
	global.HighScore = global.XPpoints;
}

if (room != Sala_Tutorial)
{
	global.playTimes +=1;
}
