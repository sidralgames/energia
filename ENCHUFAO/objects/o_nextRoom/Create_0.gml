/// @description Insert description here
// You can write your code in this editor
global.level = 1;
global.XPpoints = 0;

shipSelected = false
canSelectShip = false;

font_add_enable_aa(false);

customFont = font_add("ChubbyChoo-SemiBold.ttf", 15, false, false, 32, 128);
customFont2 = font_add("ChubbyChoo-SemiBold.ttf", 12, false, false, 32, 128);
_visible = true;

width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;

global.wallgrid_ = ds_grid_create(width_,height_);


t = 6;
increment = 2; //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = 3;

dir1 = choose(90,270);

//clone the x- and y-positions
xx = x;
yy = y;