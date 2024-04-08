/// @description Inserte aquí la descripción
// Puede escribir su código en este editor











// Inherit the parent event
event_inherited();
xConnectionDisp= x+lengthdir_x(105,image_angle-5);
yConnectionDisp = y+lengthdir_y(105,image_angle-5);
contToShoot=0;
counting = false;
laser = instance_create_layer(xConnectionDisp,yConnectionDisp,"Player",o_LaserMp3)
laser.superGun = self;
bnc = 0.8;
IsEnchufeMP3CHILL = true;
changed= false;

blueWidht = 10;
whiteWidht = 6

maxLenght_ = 600;
colorLaser = global.brightRed;
contExploTile=0;
drawflash=true
xConnectionPos= x+lengthdir_x(105,image_angle-180);
yConnectionPos = y+lengthdir_y(105,image_angle-180);
image_speed = 0;
image_index = 3;

// Delay route
delay_emitter = audio_emitter_create();
delay_bus = audio_bus_create();

audio_emitter_bus(delay_emitter, delay_bus);

// Delay effect
var _delay_effect = audio_effect_create(AudioEffectType.Reverb1);
_delay_effect.size = 0.9;
_delay_effect.mix = 0.5;
_delay_effect.damp = 0.8;
delay_bus.effects[0] = _delay_effect;