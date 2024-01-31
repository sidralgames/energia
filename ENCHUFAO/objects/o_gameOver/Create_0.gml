/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 );

camera_set_view_pos(cam, x,y)


contPartsInitial = 3;
contParts = contPartsInitial;

depth = layer_get_depth("Main") -1;

image_alpha = 0;

info = irandom(42);

text = "";

alarm[0] = 60;
killedByCreated = false;

//-----Check HighScore----///
if (global.HighScore < global.XPpoints)
{
	global.HighScore = global.XPpoints;
}

if (room != Sala_Tutorial)
{
	global.playTimes +=1;
}
