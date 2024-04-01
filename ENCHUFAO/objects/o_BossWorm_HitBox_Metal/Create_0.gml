/// @description Inserte aquí la descripción
// Puede escribir su código en este editor





// Inherit the parent event
event_inherited();
hurts = false;
contHurt=10;
canBreak = false;
contBreak = 20;
_tilemap_id = layer_tilemap_get_id("Tiles");
canBeDestroyed = false;
slowMoPickUps = choose(3,4);
die = false;
state = -1;
isWormHitBox = true;
dying = false;
isVisible = true;
affectedByLaserTrap = false;
enemyBestiaryNumber = global.enemyBossWormBestiaryNumber;