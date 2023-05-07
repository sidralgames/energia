/// @description Insert description here
// You can write your code in this editor
hp--;

lerpProgress += (1 - lerpProgress) / 50;

if (alarm[0] <= 0)
{
	textProgress += global.textSpeed;
}

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)


if (hp <= 0)
{
	
		instance_destroy();
		if (instance_exists(oTextQueuedAlone))
		{
			with(oTextQueuedAlone) ticket --;
		}

}

x2Target =  max(30, (string_width(_message)*1.5) );
xoffset = - ((string_width(_message)*1.5) / 2);



yoffset = -50 - (string_height(_message));
y2 = max(30, (string_height(_message)*1.5));

w = x2 -x1;
h = y2-y1;


		
