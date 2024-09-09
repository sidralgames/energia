/// @description Insert description here
// You can write your code in this editor
/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
event_inherited();

canCollide = true;
inScreen = 0;
verletSystem1 = new verletSystem(-random_range(0.3,0.7), -random_range(0.6,0.8));

var _wall_map_id = layer_tilemap_get_id("Tiles");

var tile_exist_left = tilemap_get_at_pixel(_wall_map_id, x-25,y)
var tile_exist_right = tilemap_get_at_pixel(_wall_map_id, x+25,y)
var tile_exist_topTop = tilemap_get_at_pixel(_wall_map_id, x,y-46)

alarm[2]=random_range(0,60)
alarm[1]=50;
alarm[0] = 90;
alarm[3] = 90;

randomize();
verde = make_color_rgb(62,137,72);
dist = 450;
simuladoFirstTime = false;

//if (tile_exist_left) || (tile_exist_right) 
//{
//	_segments = random_range(5,10);
//}

 	_segments = choose(2,2,2,3,3);


_sprite = choose(s_vine,s_vine,s_vine, s_vine_2);

image_index = irandom(6)

_maxTension = 100;

_stiffness =1;



//rope1 = verletGroupCreateRope(verletSystem1, x, y, verde, 2, 1, _segments, 2, 10);
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, _stiffness,_maxTension);

// Attach its first vertex to an object
//var inst = instance_create_layer(x, y, "InstancesDelante", oDrag);
//rope1.vertexAttachTo(first, inst);
			
// Attach an object to its last vertex

	//if (tile_exist_left) && !(tile_exist_right)
	//{

	//}
	//else if !(tile_exist_left) && (tile_exist_right)
	//{

	//}
	//else if (tile_exist_left) && (tile_exist_right)
	//{
	//	var inst2 = instance_create_layer(choose(x-random_range(16,30),x+random_range(16,30)),y, "Vines", oTest);
	//	rope1.vertexAttachTo(last, inst2);
	//	rope1.vertexChangeData(last, inst2.x, inst2.y,, true);
	//}
		
//force = verletSystem1.addForceField(x-30, y-20, x+30, y+60, 90, 0.5, false);

