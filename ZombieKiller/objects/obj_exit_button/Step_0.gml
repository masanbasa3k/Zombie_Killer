hovering = position_meeting(mouse_x, mouse_y, self);

if (hovering) && (mouse_check_button_pressed(mb_left))
{
	game_end();
}