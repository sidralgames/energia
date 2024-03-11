/// @description Insert description here
// You can write your code in this editor
depth = -200
pause = false;
pauseSurf = -1;
pauseSurfBuffer = -1;

pausedByCinematic = false;
goToMenu = false;
image_speed = 0.25;

resW = display_get_width();
resH = display_get_height();
alarm[1] = 20;
showControls = false;



font_add_enable_aa(false);

customFont = font_add("ChubbyChoo-SemiBold.ttf", 14, false, false, 32, 128);
customFont2 = font_add("ChubbyChoo-SemiBold.ttf", 12, false, false, 32, 128);

timesToDraw = 0;

quit = false;

selected = 0;
selectedCross = 0;
spriteBack = 0;
