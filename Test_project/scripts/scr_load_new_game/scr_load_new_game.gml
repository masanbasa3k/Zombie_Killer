// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_new_game(){
		//room = _json[? "room"];
		global.player_hp = 100;
		global.player_hp_max = 100;
		global.player_has_level = 0;
		global.max_xp_count = 100;
		global.player_xp = 0;
		global.player_money = 0;
		global.invSize = 8;
		global.player_x = 100;
		global.player_y = 100;
		// do stuff after load
		if (instance_exists(obj_player)){instance_destroy(obj_player)}
		instance_create_layer(global.player_x,global.player_y,"World",obj_player)
}