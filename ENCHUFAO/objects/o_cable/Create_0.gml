/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
_alpha = 1;
haveToUpdate = false;
canCollide = false;
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
// Create verlet groups
_segments = 5 * global.cableStat
if (global.cableStat>6 && room = Sala_Inicio)
{
_widhtCable = 5
}
else
{
_widhtCable = 2	
}
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, _widhtCable, 3, _segments, 2, 100,canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_playerShip)
rope1.vertexAttachTo(first, inst);


plugged = false;
pluggedShip = false;

		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Player", o_charger);
instTope.depth = depth-1;
rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

