/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
part_system_depth(global.EnemyKilledBy_sys,layer_get_depth("Pause") -1 )
cam = view_camera[0];
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 );

camera_set_view_pos(cam, x,y)

contPartsInitial = 3;
depth = layer_get_depth("Pause") -2;
contParts = contPartsInitial;
text ="";
info ="";

deathCounted = false;

tipChoosed = false;
tip = irandom_range(0,3)
image_speed = 0;

//sprite_index = global.numEnemyKilledBy;
enemyBestiaryNumber = global.lastTouched; //o_gameOver.killedby;
part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
off = 0;




wallMouth = false;
drawsprite = true;

imageSprite = 0;



rot = 0;
frequency = 1;
amplitude = 50;
midpoint = 10;
timer = 0;
current = 0;




//------ COUNT KILLED BY -------//

SaveGame();

for (var i=0; i<global.totalNumberOfEnemiesBestiary; i++)
{
	enemy = ds_map_find_value(global.bestiaryList, i);
	
	if (enemy.number = enemyBestiaryNumber)
	{
		enemy.killedByNum = enemy.killedByNum+1;
		
		//-- Guardamos ya valor --//
		ini_open("EnxufaoData.ini");
		ini_write_real("bestiary", enemy.keyKilledBy,enemy.killedByNum);
		ini_close();
		
		//-- Load para machacar el valor killedBy --//
		LoadGame();
		
		break;
	}
}
