// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextBoxAlone()
{
	var _obj;
	_speaker = argument[2];
	
	if (instance_exists(oTextAlone)) _obj = oTextQueuedAlone; else _obj = oTextAlone;

	global.offset=0;

	
	with (instance_create_layer(_speaker.x,_speaker.y-_speaker.sprite_height/2,"Main", _obj))
	{
		
		_speaker = argument[2]
		_message =  argument[0];
		if (instance_exists(other)) originInstance = other.id; else originInstance = noone;
		if (argument_count > 1) background= argument[1]; else background = 1;
		if (argument_count > 3)
		{
			//trim markers form responses
			responses = argument[3]
			for (var i = 0; i < array_length_1d(responses); i++)
			{
				var _markerPosition	= string_pos(":", responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, _markerPosition-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] =  string_delete(responses[i], 1, _markerPosition);
				
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}

	}
	
}