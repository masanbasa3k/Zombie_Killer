exit;

if (!inventoryIsOpen){exit;}

//draw_sprite_ext(spr_inventory_bg,0,0,0,RESOLUTION_W,RESOLUTION_H,0,0,1)

for (var i=0; i<ds_list_size(global.inv); i++)
{
	var _arr = global.inv[|i];
	
	var _item = _arr[0];
	var _count = _arr[1];
	
	var _slot = global.invSlots[|i]
	_slot.item_type = _item;
	_slot.item_spr = itemSprite[_item];
	_slot.item_count = _count;
	_slot.self_number = i
	
	//var _inventory_slot = instance_create_depth(100+i*64,100,-100,obj_inventory_slot)
	//with (_inventory_slot){item_type = _item; item_spr = other.itemSprite[_item]; item_count = _count}
}


with (obj_player)
{
	//var _hand_slot_1 = instance_create_depth(100+0*64,32,-100,obj_inventory_slot)
	//with (_hand_slot_1){item_spr = other.player_hand.handItemSprite[other.handHolding[0]]}
	
	//var _hand_slot_2 = instance_create_depth(100+1*64,32,-100,obj_inventory_slot)
	//with (_hand_slot_2){item_spr = other.player_hand.handItemSprite[other.handHolding[1]]}
	
	//var _hand_slot_3 = instance_create_depth(100+2*64,32,-100,obj_inventory_slot)
	//with (_hand_slot_3){item_spr = other.player_hand.handItemSprite[other.handHolding[2]]}
}