/// @arg building name
/// @arg background
/// @arg what can craft or do

function scr_new_building_menu_box(){
	var _obj;
	
	_obj = obj_text_building;

	with (instance_create_layer(0,0,"World",_obj))
	{
		message = argument[0];
		itemlist = argument[3];
		if (instance_exists(other))
		{originInstance = other.id}
		else {originInstance = noone;}
		
		if (argument_count > 1)
		{background = argument[1];}
		else
		{background = 0;}
		
		if (argument_count > 2)
		{
			responses = argument[2];
			for (var i = 0; i < array_length_1d(responses); i++)
			{
				var _makerPosition = string_pos(":", responses[i]);
				responseScripts[i] = string_copy(responses[i],1,_makerPosition-1);
				responseScripts[i] = real(responseScripts[i]);
				responses[i] = string_delete(responses[i],1,_makerPosition);
				breakpoint = 10;
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
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