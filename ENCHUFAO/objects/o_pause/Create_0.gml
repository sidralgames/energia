/// @description Insert description here
// You can write your code in this editor
depth = -200
pause = false;
pauseSurf = -1;
pauseSurfBuffer = -1;

pausedByCinematic = false;
image_speed = 0.25;

resW = display_get_width();
resH = display_get_height();
alarm[1] = 20;




font_add_enable_aa(false);

customFont = font_add("ChubbyChoo-SemiBold.ttf", 14, false, false, 32, 128);

timesToDraw = 0;

selected = 0;
spriteBack = 0;
