lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(ord("S"));
responseSelected += (keyDown - keyUp);
var _max = array_length_1d(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;


if mouse_check_button_pressed(vk_space)
{
	var _messageLength = string_length(message);
	if (textProgress >= _messageLength)
	{
		instance_destroy();
		if (instance_exists(obj_text_queued))
		{
			with (obj_text_queued) ticket--;
		}
		else
		{
			with (obj_player) {state = last_state;}
		}
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}