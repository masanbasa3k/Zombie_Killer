if (_room != room)
{
	_room = room;
	depth = -room_height;
}

if(!instance_exists(obj_player)){exit;}
time_of_day += 1;
//show_debug_message(time_of_day);
var _t = scr_sin_ext(time_of_day * 0.002, 0, 1);
//show_debug_message(_t )
if (time_of_day == 3970)
{
	//show_debug_message(time_of_day)
	time_of_day = 738;
	global.day ++;
}

//738 and 3970 is night _t = 1
//2354 is day _t = 0