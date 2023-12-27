/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


cable = instance_create_layer(x,y,"PauseHUE_sub", o_enemySegments_BodyGameOver);


t = 6;
increment = choose(6); //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = choose(4);

dir1 = choose(90,270)

//clone the x- and y-positions
xx = x;
yy = y;

alarm[0] = 30;
