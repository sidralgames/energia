/// @description Insert description here
// You can write your code in this editor
xoffset = -15 + (i*15)
yoffset = 30;

var _c = dcos(_angle);
var _s = dsin(_angle);

var _x = x - xoffset * _c - yoffset * _s;
var _y = y - xoffset * -_s - yoffset * _c;
x=enchufe.x;
y = enchufe.y
_angle = enchufe._angle