/// @description Insert description here
// You can write your code in this editor
if (global.chipsNumber < o_cable._segments/2)
{
	global.chipsNumber+=2;
	switch(_sprite)
	{
		case s_temporary_fireRate:
		{
			
			global.temporaryFireRate = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipAmmoSuper = instance_create_layer(x,y,"Player",o_chipAmmoSuper);
				
				AddChip(initialChipIndex+global.chipsNumber, chipAmmoSuper);
				
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipAmmoSuper, vertexAttachmentType.both);
				chipAmmoSuper.chipNum = initialChipIndex+global.chipsNumber;
				chipAmmoSuper.tipo = "FireRate";
				
			}
		
		}break;
	
		case s_temporary_superShot:
		{
		
			global.temporarySuperShot = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipAmmoSuper = instance_create_layer(x,y,"Player",o_chipAmmoSuper);
				
				AddChip(initialChipIndex+global.chipsNumber, chipAmmoSuper);
				
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipAmmoSuper, vertexAttachmentType.both);
				chipAmmoSuper.chipNum = initialChipIndex+global.chipsNumber;
				chipAmmoSuper.tipo = "SuperShot";
			}
		
		
		}break;
	
		case s_temporary_laser:
		{
		
			global.temporaryLaser = global.temporaryTimeMax;
		
			with(o_cable)
			{
				chipLaser = instance_create_layer(x,y,"Player",o_chipLaser)
				
				AddChip(initialChipIndex+global.chipsNumber, chipLaser);
				rope1.vertexAttachObject(initialChipIndex+global.chipsNumber, chipLaser, vertexAttachmentType.both);
				chipLaser.chipNum = initialChipIndex+global.chipsNumber;
			}
		
		
		}break;
	}
}

instance_destroy();







