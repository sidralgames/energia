/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


if (self.enchufeActive)
	{
		with(o_playerShip)
		{
			Unplug();
		}
	}
	
	explo = instance_create(x,y,o_exploPurple)

	enchufeFinal = instance_create_layer(x, y, "Enchufes", o_enchufe_Final)
	instance_destroy(o_enchufeFinal_Broken_R)
	instance_destroy(o_enchufeFinal_Broken_L)
	instance_destroy(other)
	instance_destroy();








