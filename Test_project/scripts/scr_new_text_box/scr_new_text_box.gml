// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_new_text_box(){
	var _obj;
	if instance_exists(obj_text){_obj = obj_text_queued;}
	else {_obj = obj_text;}

	with (instance_create_layer(0,0,"World",_obj))
	{
		message = argument[0];
		if (instance_exists(other))
		{originInstance = other.id}
		else {originInstance = noone;}
		
		if (argument_count > 1)
		{background = argument[1];}
		else
		{background = 0;}
	}
	
	with (obj_player)
	{
		if (state != scr_player_state_locked)
		{
			last_state = state;
			state = scr_player_state_locked;
		}
	}
}