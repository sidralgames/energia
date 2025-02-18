/// @description Insert description here
// You can write your code in this editor
global.level = 1;
global.XPpoints = 0;


goToChillRoom = false;

shipSelected = false
canSelectShip = false;



_visible = true;

width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;

global.wallgrid_ = -1;

set = false;
t = 6;
increment = 2; //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = 3;
initialX = 320;
alphaSprite=1;
scaleArrowsL=0;
scaleArrowsR=0;
dir1 = choose(90,270);

//clone the x- and y-positions
xx = x;
yy = y;