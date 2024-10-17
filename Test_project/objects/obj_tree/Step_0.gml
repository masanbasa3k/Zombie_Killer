/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

if (entityHp <= 0)
{
	scr_instance_create_item(x, y, entityDrop[0]);
	if (has_apple==0)
	{scr_instance_create_item(x, y, entityDrop[1]);}
}



