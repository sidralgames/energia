/// @description Insert description here
// You can write your code in this editor

depth = layer_get_depth("Text")
xoffset = 0;
yoffset = 0;

	
hp = 350;

alarm[0] = 10;


x1 = 320;
y1 = 0;
x2 = 320;
y2 = 60;


x1Target = 0;
x2Target =  100;

lerpProgress = 0;
textProgress = 0;

h=0;
w=0;

x1Target = 0;

if x2Target > 180
{
	x2Target= 180
}

responseSelected = 0;

yOffsetFinal = global.offset;
