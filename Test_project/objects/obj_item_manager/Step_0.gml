/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("I"))){inventoryIsOpen = !inventoryIsOpen;}

if (create_slots)
{
	if (array_length(global.invSlots) < global.invSize)
	{
		for (var i=0; i<global.invSize; i++)
		{
			global.inv[i] = [-1,-1];
			if (i < 8){var _x = 100+((i-3)*64); var _y = 100}
			else if (i < 13){var _x = 100+((i-8)*64); var _y = 100+64}
			else if (i < 18){var _x = 100+((i-13)*64); var _y = 100+128}
			else if (i < 23){var _x = 100+((i-18)*64); var _y = 228+64}
			var _inventory_slot = instance_create_depth(_x,_y,-999,obj_inventory_slot);
			global.invSlots[i] = _inventory_slot;
			_inventory_slot.self_number = i;
			if (i<3)
			{
				_inventory_slot.x = 100+i*64;
				_inventory_slot.y = 100-64;
				_inventory_slot.hand_slot = true;
				_inventory_slot.hand_slot_number = i;
			}
		}
	}
	global.inv[0] = global.hands[0];
	global.inv[1] = global.hands[1];
	global.inv[2] = global.hands[2];
	create_slots = false;
}

