/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.bombsTutorial = 0;
global.laserTutorial = 0;

customFont2 = font_add("ChubbyChoo-SemiBold.ttf", 14, false, false, 32, 128);

contEnemies =160;
CanCreateEnemies = false;

HPcreated = false;
oddsEnchufeHP = 2;
EnchufeHPcreated = false;

Energycreated = false;
oddsEnchufeEnergy = 2;
EnchufeEnergycreated = false;

Ammocreated = false;
oddsEnchufeAmmo = 2;
EnchufeAmmocreated = false;

LaserCreated = false;
oddsEnchufeLaser = 2;
EnchufeLasercreated = false;

bombCreated = false;
oddsEnchufebomb = 2;
EnchufeBombcreated = false;

instance_create(x,y,o_gridRoom)
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;




