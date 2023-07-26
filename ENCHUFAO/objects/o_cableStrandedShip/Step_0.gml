/// @description Update the simulation

// Simulate the whole verlet system
// You can also simulate individual groups


if creandoCharger == true
{
	rope1.vertexChangeData(last, global.newChargerX, global.newChargerY)
	instTope = instance_create_layer(global.newChargerX, global.newChargerY,"Player", o_chargerStrandedShip);
	instTope.x = global.newChargerX;
	instTope.y = global.newChargerY;
	instTope.depth = depth-1;
	rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);
	
	creandoCharger = false;
}

if instance_exists(inst)
{
	x=inst.x;
	y=inst.y;

}



if (verletSystemExists(verletSystem1))
{
	verletSystem1.simulate();
}

