// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_change_hand(){
	player_hand.state = handHolding[holding_number]
	if (keyboard_check_pressed(ord("1")))
	{
		holding_number = 0
	}
	if (keyboard_check_pressed(ord("2")))
	{
		holding_number = 1
	}
	if (keyboard_check_pressed(ord("3")))
	{
		holding_number = 2
	}
}