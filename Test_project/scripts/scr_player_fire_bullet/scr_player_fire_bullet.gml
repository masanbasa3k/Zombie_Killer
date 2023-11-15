// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_fire_bullet(){
	
			player_hand.curvePos = 0;
			player_hand.curveSpd = 0.05;
			player_hand.cooldown = 20;
			
			var _bullet_type = player_hand.ranged_weapon_ammo_type[handHolding[holding_number]];
			var _bullet_cone_size = player_hand.ranged_weapon_ammo_cone_size[handHolding[holding_number]];
			var _bullet_range = player_hand.ranged_weapon_ammo_range[handHolding[holding_number]];
			var _bullet_speed = player_hand.ranged_weapon_ammo_speed[handHolding[holding_number]];

			with(instance_create_depth(player_hand.x, player_hand.y, player_hand.depth-1, obj_bullet_creator))
			{
				bullet_type = _bullet_type;
				bullet_cone_size = _bullet_cone_size;
				bullet_range = _bullet_range;
				bullet_speed = _bullet_speed;
				
				image_angle = other.player_hand.image_angle;
				direction = other.player_hand.direction;
			}
			
}