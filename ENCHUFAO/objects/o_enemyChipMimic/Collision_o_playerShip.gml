/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip) && (alarm[10] <= 0)
{
	if (o_playerShip.pluggedFinal = false)
	{
		if (2+global.chipsVertex/2 <= global.cableStat*2)
		{
			global.chipPosition+=1;
			global.chipsVertex+=2;
		
			global.temporaryLaser = global.chipDuration;
		
			with(o_cable)
			{
				chipMimic= instance_create_layer(x,y,"Player",o_chipMimic)
				
				AddChip(initialChipIndex+global.chipsVertex, chipMimic);
				rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipMimic, vertexAttachmentType.both);
				chipMimic.chipVertex = initialChipIndex+global.chipsVertex;
				chipMimic.chipPos = global.chipPosition;
			}
			
			instance_destroy();
		}
	}
}






