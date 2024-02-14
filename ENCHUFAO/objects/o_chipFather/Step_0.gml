///// @description Inserte aquí la descripción
//// Puede escribir su código en este editor




_hp --;

if (_hp <= 3) && (deattached = false)
{
	with(o_cable)
	{
		if (other.chipPos>=1)
		{
			rope1.vertexDeAttachTo(2);
			//rope1.vertexDeAttachTo(other.chipPos);
			other.inCable = false;
			other.deattached = true;
		}
	}
}

if (_hp <= 0)
{
	instance_destroy();
}

if (changeVertex = true)
{
	
	changeVertex = false;
	chipVertex = chipVertex-2;
	
	//with(o_cable)
	//{
	//	for (var i=0; i<8; i++)
	//	{
	//		rope1.vertexDeAttachTo(2+i);
	//	}
		
	//}
	
	with(o_cable)
	{
		rope1.vertexAttachObject(other.chipVertex, other, vertexAttachmentType.both);
	}
	

	
	//if (chipPos>=1)
	//{
	//	chipPos -=1;
	//}
	
}







//firstChip = collision_circle(x,y,50, o_chipFather, false, true);

//if (firstChip)
//{
//	if (firstChip.chipVertex !=4)
//	{
//		if (chipVertex > 4) && !collision_circle(x,y,100, o_chipFather, false, true)
//		{
//			chipVertex -=1;
//			chipToMove = self;
	
//			with(o_cable)
//			{
//				chip = o_chipFather.chipToMove;
		
//				rope1.vertexDeAttachTo(chip.chipVertex+1);
//				rope1.vertexAttachObject(chip.chipVertex, chip, vertexAttachmentType.both);
//			}
//		}
//	}
//}
//else
//{
//	if (chipVertex > 4) && !collision_circle(x,y,100, o_chipFather, false, true)
//	{
//		chipVertex -=1;
//		chipToMove = self;
	
//		with(o_cable)
//		{
//			chip = o_chipFather.chipToMove;
	
//			rope1.vertexDeAttachTo(chip.chipVertex+1);
//			rope1.vertexAttachObject(chip.chipVertex, chip, vertexAttachmentType.both);
//		}
//	}
//}




