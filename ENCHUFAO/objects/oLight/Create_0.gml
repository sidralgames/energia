/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch (room)
{
	case Sala_0:
	{
		if (global.level <=5)
		{
			num = irandom_range(50,225);
		}
		else
		{
			num = irandom_range(40,170);
		}
	}
	break;
	
	case Sala_SecondBoss:
	{
		num = irandom_range(60,120);
	}
	break;
	
	case Sala_BossWorm:
	{
		num = irandom_range(40,100);
	}
	break;
}

black = make_color_rgb(num,num,num)

light_layer = layer_get_id("Light");

light_surface = surface_create(room_width, room_height);


layer_script_begin(light_layer, Lights_begin);
layer_script_end(light_layer, Lights_end);







