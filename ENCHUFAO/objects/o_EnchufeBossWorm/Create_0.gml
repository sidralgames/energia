/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



// Inherit the parent event
event_inherited();
open = false;
flashAlpha = 1;
burned = false;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurned = contBurnedMax;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;

electrocutated = false;
contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;

burnFlash = 0;
electroFlash = 0;

image_speed = 0;

IsEnchufeBoss = true;
changedMetal = false

sprite_enchufePluged = s_enchufeBossWorm;
die = false