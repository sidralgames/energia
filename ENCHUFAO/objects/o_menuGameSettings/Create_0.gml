/// @description Insert description here
// You can write your code in this editor
o_nextRoom._visible = false;
selected = 0;
selectedCross = 0;
_visible = true;
if (global.soundOn = false)
{
	soundSprite = s_soundOff;	
}
else
{
	soundSprite = s_soundOn;
}

if (global.screenshakeIsOn)
{
	spriteShake = s_screenshakeOn;	
}
else
{
	spriteShake = s_screenshakeOff;
}


if surface_get_width(application_surface) = 1920
{
	graphics = 2
}
else if surface_get_width(application_surface) = 1280
{
	graphics = 1
}
else
{
	graphics = 0
}

graphicsResized = false;



