/// @description Insert description here
// You can write your code in this editor
precision = 3;
_angle = 0;
_speed = 1;
strandedSpeed = 1;
depth = layer_get_depth("Player") - 1;
changedSpeed = false
odds = 20;
minTime = 30;
maxTime = 90;

cable = instance_create_layer(x,y,"Cable", o_cableFriend);

bnc = 0.8;
myPath = path_add();



