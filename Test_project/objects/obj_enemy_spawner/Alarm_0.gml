var _kill = 1;


var _total_kill = global.total_zombie_kill_count / 10;

repeat(_kill+_total_kill)
{
	instance_create_layer(x+irandom_range(-32,32),y+irandom_range(-32,32),layer,obj_zombie);
}



	
alarm[0] = 10*60;
