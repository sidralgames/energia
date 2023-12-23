/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

cam = view_camera[0];
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 );

camera_set_view_pos(cam, x,y)

contPartsInitial = 3;
depth = layer_get_depth("Pause") -2;
contParts = contPartsInitial;
text ="";
info ="";



tipChoosed = false;
tip = irandom_range(0,3)
image_speed = 0;
sprite_index = global.spriteKilledBy;





wallMouth = false;
drawsprite = true;




frequency = 1;
amplitude = 50;
midpoint = 10;
timer = 0;
current = 0;