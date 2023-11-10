/// @description Insert description here
// You can write your code in this editor
inventoryIsOpen = global.inventoryMenu

if (create_slots)
{
	if (array_length(global.invSlots) < global.invSize)
	{
		for (var i=0; i<global.invSize; i++)
		{
			global.inv[i] = [-1,-1];
			if (i < 8){var _x = 100+((i-3)*32); var _y = 100}
			else if (i < 13){var _x = 100+((i-8)*32); var _y = 132}
			else if (i < 18){var _x = 100+((i-13)*32); var _y = 164}
			else if (i < 23){var _x = 100+((i-18)*32); var _y = 196}
			var _inventory_slot = instance_create_depth(_x,_y,-999,obj_inventory_slot);
			global.invSlots[i] = _inventory_slot;
			_inventory_slot.self_number = i;
			if (i<3)
			{
				_inventory_slot.x = 190+i*96;
				_inventory_slot.y = 222;
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

