 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SocketShoot()
{
	
	xoffset1 = 0;
	yoffset1 = 21;
	_c1 = dcos(_angle);
	_s1 = dsin(_angle);
	_x1 = x - xoffset1 * _c1 - yoffset1 * _s1;
	_y1 = y - xoffset1 * -_s1 - yoffset1 * _c1;
	dire1 = point_direction(x,y, _x1, _y1);
	
	var bullet1 = instance_create_layer(_x1, _y1, "Bullets", o_bulletPlayer);
	if instance_exists(bullet1)
	{
		bullet1.bulletSpeed = 5;
		bullet1._angle = dire1
		bullet1.direction = dire1;
		global.shootsFired+=1;
	}
	

	xoffset2 = 12;
	yoffset2 = -17;
	_c2 = dcos(_angle);
	_s2 = dsin(_angle);
	_x2 = x - xoffset2 * _c2 - yoffset2 * _s2;
	_y2 = y - xoffset2 * -_s2 - yoffset2 * _c2;
	dire2 = point_direction(x,y, _x2, _y2);
	
	var bullet2 = instance_create_layer(_x2, _y2, "Bullets", o_bulletPlayer);
	if instance_exists(bullet2)
	{
		bullet2.bulletSpeed = 5;
		bullet2._angle = dire2
		bullet2.direction = dire2;
		global.shootsFired+=1;
	}
	

	xoffset3 = -12;
	yoffset3 = -17;
	_c3 = dcos(_angle);
	_s3 = dsin(_angle);
	_x3 = x - xoffset3 * _c3 - yoffset3 * _s3;
	_y3 = y - xoffset3 * -_s3 - yoffset3 * _c3;
	dire3 = point_direction(x,y, _x3, _y3);
	
	var bullet3 = instance_create_layer(_x3, _y3, "Bullets", o_bulletPlayer);
	if instance_exists(bullet3)
	{
		bullet3.bulletSpeed = 5;
		bullet3._angle = dire3
		bullet3.direction = dire3;
		global.shootsFired+=1;
	}

}