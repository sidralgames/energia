/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

num = irandom(255);
black = make_color_rgb(num,num,num)

light_layer = layer_get_id("Light");

light_surface = surface_create(room_width, room_height);


layer_script_begin(light_layer, Lights_begin);
layer_script_end(light_layer, Lights_end);







