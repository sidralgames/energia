///// @description Inserte aquí la descripción
//// Puede escribir su código en este editor
_hp --;

if (_hp <= 30) && (deattached = false)
{
	with(o_cable)
	{
		rope1.vertexDeAttachTo(other.chipNum);
		other.inCable = false;
		other.deattached = true;
	}
}

if (_hp <= 0) 
{
	instance_destroy()
}














//firstChip = collision_circle(x,y,50, o_chipFather, false, true);

//if (firstChip)
//{
//	if (firstChip.chipNum !=4)
//	{
//		if (chipNum > 4) && !collision_circle(x,y,100, o_chipFather, false, true)
//		{
//			chipNum -=1;
//			chipToMove = self;
	
//			with(o_cable)
//			{
//				chip = o_chipFather.chipToMove;
		
//				rope1.vertexDeAttachTo(chip.chipNum+1);
//				rope1.vertexAttachObject(chip.chipNum, chip, vertexAttachmentType.both);
//			}
//		}
//	}
//}
//else
//{
//	if (chipNum > 4) && !collision_circle(x,y,100, o_chipFather, false, true)
//	{
//		chipNum -=1;
//		chipToMove = self;
	
//		with(o_cable)
//		{
//			chip = o_chipFather.chipToMove;
	
//			rope1.vertexDeAttachTo(chip.chipNum+1);
//			rope1.vertexAttachObject(chip.chipNum, chip, vertexAttachmentType.both);
//		}
//	}
//}




