lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if mouse_check_button_pressed(mb_left)
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