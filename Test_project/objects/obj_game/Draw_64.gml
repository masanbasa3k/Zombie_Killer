//draw_text(32, 32, "FPS = " + string(fps));
//draw_text(32, 48, "day = " + string(global.day));
//draw_text(32, 64, "hour = " + string(obj_surface_light.time_of_day));
depth = -1
if (global.MenuOpen)
{
draw_set_alpha(0.5)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}

if (instance_exists(obj_player))
{
var _player_healtPC = (global.player_hp / global.player_hp_max) * 100;
draw_healthbar(32,316,96,320,_player_healtPC,c_gray,c_red,c_red,0,true,true);


var _player_staminaPC = (global.player_stamina / global.player_stamina_max) * 100;
draw_healthbar(32,324,96,328,_player_staminaPC,c_gray,c_orange,c_orange,0,true,true);

var _player_xp = (global.player_xp / global.max_xp_count) * 100;
draw_healthbar(32,308,96,312,_player_xp,c_gray,c_blue,c_blue,0,true,true);
//draw_text(64, 48, "Player XP: " + string(global.player_xp));


draw_text(64, 48, "Total Kill: " + string(global.total_zombie_kill_count));
}
