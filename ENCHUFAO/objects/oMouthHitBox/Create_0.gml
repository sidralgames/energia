/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



contDiscount = random_range(30,60)
discounted = false;

// Inherit the parent event
event_inherited();
hurts = true;
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

enemyBestiaryNumber = global.enemyFreewormBestiaryNumber;