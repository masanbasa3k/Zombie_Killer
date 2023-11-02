// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_instance_create_item(){
	var _x = argument[0];
	var _y = argument[1];
	var _item = argument[2];

	var _inst = instance_create_layer(_x, _y, "World", obj_item);
	_inst.itemType = _item;
	
	_inst.sprite_index = obj_item_manager.itemSprite[_item];
}