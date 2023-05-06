/// @description Insert description here
// You can write your code in this editor

_hpush = 0;
_vpush = 0;
bnc = 0.6;
_speed = 3;
walkSpeed = _speed;
diagSpeed = round(_speed * ((sqrt(2)) / 2));
plugged = false
walkAcceleration = 0.1;
airAcceleration = 0.2;
hFrictionGround = 1;
hFrictionAir = 0.05;
offRange = 5;
recoil = 0.1;
fireRate = 15;
tocado = false;

hSpeedFraction = 0.0;
vSpeedFraction = 0.0;
createdFromUnplugged = false;
instance_create_layer(x,y,"Cable", o_cable)
instance_create_layer(x,y,"Player", o_crosshair)

