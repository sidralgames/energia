/// @description Insert description here
// You can write your code in this editor
camW = 640;
camH = 360;
cam = view_camera[0];
follow = o_playerShip;
camera_set_view_size(cam, camW, camH)
outRemain = 0;
const = 640 / 1920
viewWidthHalf= camera_get_view_width(cam) * 0.5;
viewHeightHalf= camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

shakeLenght = 0;
shakeMagnitude = 0;
shakeRemain = 0;
angleMagnitude = 0;
angleRemain = 0;

buff = 16; 

cont = -30;
zoom = false;
wheel = 0;
lastX = x;
lastY = y;




