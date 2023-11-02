// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_change_hand(){
	if (keyboard_check_pressed(ord("1")))
	{
		player_hand.state = handHolding[0]
	}
	if (keyboard_check_pressed(ord("2")))
	{
		player_hand.state = handHolding[1]
	}
	if (keyboard_check_pressed(ord("3")))
	{
		player_hand.state = handHolding[2]
	}
}