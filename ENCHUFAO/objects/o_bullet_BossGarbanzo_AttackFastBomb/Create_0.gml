/// @description Insert description here
// You can write your code in this editor
type = collisionType.custom;
part = 0;

enemy = instance_nearest(x,y,o_BossMecha)
enemyShooter = enemy.sprite_index;
shooterTrail = false;



// Inherit the parent event
event_inherited();

hp = 180;
dire = 1;
isEnemyBomb = false;
isMineBomb = false;
isBossGarbanzoBomb = false;