/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (alarm[0] <= 0)
{
	diffX = choose(random_range(-100, room_width+100));
	diffY = choose(random_range(-100, room_height+100));
	a = point_direction(x, y, diffX, diffY);
	
	alarm[0] = random_range(90, 190)
}

direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
image_angle = direction;
speed = enemySpeed * min(1, global.relativeSpeed + 0.2);
