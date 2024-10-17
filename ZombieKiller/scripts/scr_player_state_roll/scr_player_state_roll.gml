// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_roll(){
	
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	var _collided = scr_player_collision();
	sprite_index = spriteRoll;
	
	if (moveDistanceRemaining <= 0)
	{
		state = scr_player_state_free;	
	}
	
	if (_collided)
	{
		state = scr_player_state_free;	
		scr_screen_shake(8,30)
	}
	
}