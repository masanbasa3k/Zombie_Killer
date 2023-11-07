/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I"))){inventoryIsOpen = !inventoryIsOpen;}

if (create_slots)
{
	with (obj_player)
	{
		var _hand_slot_1 = instance_create_depth(100+0*64,32,-100,obj_inventory_slot)
		with (_hand_slot_1){hand_slot = true;hand_slot_number=1}
	
		var _hand_slot_2 = instance_create_depth(100+1*64,32,-100,obj_inventory_slot)
		with (_hand_slot_2){hand_slot = true;hand_slot_number=2}
	
		var _hand_slot_3 = instance_create_depth(100+2*64,32,-100,obj_inventory_slot)
		with (_hand_slot_3){hand_slot = true;hand_slot_number=3}
	}

	if (array_length(global.invSlots) < global.invSize)
	{
		for (var i=0; i<global.invSize; i++)
		{
			var _inventory_slot = instance_create_depth(100+i*64,100,-100,obj_inventory_slot);
			global.invSlots[i] = _inventory_slot;
			_inventory_slot.self_number = i;
		}
	}
	create_slots = false;
}

