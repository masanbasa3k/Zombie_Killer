// Get Player Inputs
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

keyActivate = keyboard_check(ord("E"));

if (player_hand.ranged_weapon_is_auto[handHolding[holding_number]]) && (keyboard_check_pressed(ord("B")))
{
	player_hand.auto_on = -player_hand.auto_on;
}
if (player_hand.auto_on==-1)
{keyUse = mouse_check_button_pressed(mb_left)}
else
{keyUse = mouse_check_button(mb_left)}

keyRun = keyboard_check(vk_shift);

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

script_execute(state);


if (global.inv[0][0] != -1)&&(obj_item_manager.isWeapon[global.inv[0][0]]){handHolding[0] = obj_item_manager.weaponHandEnum[global.inv[0][0]];}
else{handHolding[0] = HAND.free;}

if (global.inv[1][0] != -1)&&(obj_item_manager.isWeapon[global.inv[1][0]]){handHolding[1] = obj_item_manager.weaponHandEnum[global.inv[1][0]];}
else{handHolding[1] = HAND.free;}

if (global.inv[2][0] != -1)&&(obj_item_manager.isWeapon[global.inv[2][0]]){handHolding[2] = obj_item_manager.weaponHandEnum[global.inv[2][0]];}
else{handHolding[2] = HAND.free;}