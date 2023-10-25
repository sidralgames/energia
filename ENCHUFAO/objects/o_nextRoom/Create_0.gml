/// @description Insert description here
// You can write your code in this editor
global.level = 1;
global.XPpoints = 0;

shipSelected = false
canSelectShip = false;

font_add_enable_aa(false);

customFont = font_add("ChubbyChoo-SemiBold.ttf", 15, false, false, 32, 128);
customFont2 = font_add("ChubbyChoo-SemiBold.ttf", 12, false, false, 32, 128);


width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;

global.wallgrid_ = ds_grid_create(width_,height_);