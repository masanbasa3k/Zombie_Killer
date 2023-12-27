
if (my_obj == -1) && (create_obj)
{
	var _obj = choose(obj_rock, obj_tree)
	my_obj = instance_create_layer(x,y,layer,_obj);
	create_obj = false;
}