if(!instance_exists(my_obj))
{
	my_obj = -1
	create_obj = true;
	alarm[0] = 120;
}

with (obj_tree)
{
	if place_meeting(x,y,other)
	{
		other.my_obj = instance_id;
	}
}

with (obj_rock)
{
	if place_meeting(x,y,other)
	{
		other.my_obj = instance_id;
	}
}