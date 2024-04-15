/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

// Inherit the parent event
event_inherited();

abierto = false;

final = true;

cont = false;

free = false;
_hpush = choose(random_range(0.03, 0.1), -random_range(0.03, 0.1));
_vpush = choose(random_range(0.03, 0.1), -random_range(0.03, 0.1));

secret = true;

bnc = 1;
_angle = 0;

alarm[1] = 20;

spriteLocked = s_enchufeSecretLocked;
spriteUnlocked = s_enchufeSecret;

sprite_index = s_enchufeSecretLocked
