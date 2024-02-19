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
			switch(_sprite)
			{
				case s_temporary_fireRate:
				{
			
					global.temporaryFireRate = global.chipDuration;
		
					with(o_cable)
					{
						chipAmmoRate = instance_create_layer(x,y,"Player",o_chipAmmoSuper);
				
						AddChip(initialChipIndex+global.chipsVertex, chipAmmoRate);
				
						rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipAmmoRate, vertexAttachmentType.both);
						chipAmmoRate.chipVertex = initialChipIndex+global.chipsVertex;
						chipAmmoRate.chipPos = global.chipPosition;
						chipAmmoRate.tipo = "FireRate";
				
					}
		
				}break;
	
				case s_temporary_superShot:
				{
		
					global.temporarySuperShot = global.chipDuration;
		
					with(o_cable)
					{
						chipAmmoSuper = instance_create_layer(x,y,"Player",o_chipAmmoSuper);
				
						AddChip(initialChipIndex+global.chipsVertex, chipAmmoSuper);
				
						rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipAmmoSuper, vertexAttachmentType.both);
						chipAmmoSuper.chipVertex = initialChipIndex+global.chipsVertex;
						chipAmmoSuper.chipPos = global.chipPosition;
						chipAmmoSuper.tipo = "SuperShot";
					}
		
		
				}break;
	
				case s_temporary_laser:
				{
		
					global.temporaryLaser = global.chipDuration;
		
					with(o_cable)
					{
						chipLaser = instance_create_layer(x,y,"Player",o_chipLaser)
				
						AddChip(initialChipIndex+global.chipsVertex, chipLaser);
						rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipLaser, vertexAttachmentType.both);
						chipLaser.chipVertex = initialChipIndex+global.chipsVertex;
						chipLaser.chipPos = global.chipPosition;
					}
		
		
				}break;
		
				case s_temporary_Smart:
				{
		
					global.temporaryLaser = global.chipDuration;
		
					with(o_cable)
					{
						chipSmart = instance_create_layer(x,y,"Player",o_chipSmart)
				
						AddChip(initialChipIndex+global.chipsVertex, chipSmart);
						rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipSmart, vertexAttachmentType.both);
						chipSmart.chipVertex = initialChipIndex+global.chipsVertex;
						chipSmart.chipPos = global.chipPosition;
					}
		
		
				}break;
		
				case s_temporary_Repair:
				{
		
					global.temporaryLaser = global.chipDuration;
		
					with(o_cable)
					{
						chipRepair= instance_create_layer(x,y,"Player",o_chipRepair)
				
						AddChip(initialChipIndex+global.chipsVertex, chipRepair);
						rope1.vertexAttachObject(initialChipIndex+global.chipsVertex, chipRepair, vertexAttachmentType.both);
						chipRepair.chipVertex = initialChipIndex+global.chipsVertex;
						chipRepair.chipPos = global.chipPosition;
					}
		
		
				}break;
			}
			
			instance_destroy();
		}
	}
}






