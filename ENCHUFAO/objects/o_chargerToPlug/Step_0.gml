/// @description Insert description here
// You can write your code in this editor
if (connected)
{
	_hpush = lerp(_hpush, 0, 0.005);
	_vpush = lerp(_vpush, 0, 0.005);
}
		
x+=_hpush * global.relativeSpeed;
y+=_vpush * global.relativeSpeed;




	


