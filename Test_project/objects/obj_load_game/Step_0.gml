hovering = position_meeting(mouse_x, mouse_y, self);

if (hovering) && (mouse_check_button_pressed(mb_left))
{
	room_goto(rm_test);
	scr_load_game(global.game_save_slot);
}