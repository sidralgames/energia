/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
global.bombsTutorial = 0;
global.laserTutorial = 0;

bomb = false;
contEnemies =260;
global.assistedSlowmo = false;
contAssist = 120;
canAssist = false;
contToAssist = 120;

CanCreateEnemies = false;
minenemies = 1;
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

showBomb = false;

instance_create(x,y,o_gridRoom)
width_ = room_width div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;




