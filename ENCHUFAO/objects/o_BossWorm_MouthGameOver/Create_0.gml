/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


cable = instance_create_layer(x,y,"PauseHUE_sub", o_BossWorm_BodyGameOver);
image_speed = 0;

t = 4;
increment = choose(3); //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = choose(9);

dir1 = choose(90,270)

//clone the x- and y-positions
xx = x;
yy = y;
