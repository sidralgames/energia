///// @description Inserte aquí la descripción
//// Puede escribir su código en este editor


if (scale >1)
{
	scale-=0.05;	
}

//if (sprite_index = s_chipRepair)
//{
//	_hp -= 2;
//}
//else
//{
	_hp --;
//}

if (_hp <= 60)
{
	scale = _hp/40;	
}

image_xscale = scale;
image_yscale = scale;

//if (_hp <= 50)
//{
//	if (alarm[11] <= 2)
//	{
//		image_alpha = 0.8;
//	}
//	else
//	{
//		image_alpha = 1;
//	}
	
//	if (alarm[11] <= 0)
//	{
//		alarm[11] = 5;
//	}
//}
if (_hp <= 4) && (deattached = false)
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

if (alarm[0] <= 0) && (changeVertex = true) //&& (chipVertex > global.chipVertexDead)
{
	//que no pasen del vertex inicial
	//y que solo se corran los de por detras del muerto
	changeVertex = false;
	chipVertex = chipVertex-2;
	
	with(o_cable)
	{
		rope1.vertexDeAttachTo(2);
		rope1.vertexAttachObject(other.chipVertex, other, vertexAttachmentType.both);
	}

}





