//draw_text(32, 32, "FPS = " + string(fps));
//draw_text(32, 48, "day = " + string(global.day));
//draw_text(32, 64, "hour = " + string(obj_surface_light.time_of_day));

var _player_healtPC = (global.player_hp / global.player_hp_max) * 100;
draw_healthbar(32,316,96,320,_player_healtPC,c_gray,c_red,c_red,0,true,true);


var _player_staminaPC = (global.player_stamina / global.player_stamina_max) * 100;
draw_healthbar(32,324,96,328,_player_staminaPC,c_gray,c_orange,c_orange,0,true,true);
//draw_text(32, 48, "Player XP = " + string(global.player_xp));


//draw_text(32, 64, "Obj Count = " + string(instance_number(obj_buildings_inside_craft_button)));
