 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_instance_create_item(_x,_y,_item,_amount=1){
	
	
	var _inst = instance_create_layer(_x, _y, "World", obj_item);
	_inst.itemType = _item;
	_inst.itemAmount = _amount;

	_inst.sprite_index = obj_item_manager.itemSprite[_item];
}