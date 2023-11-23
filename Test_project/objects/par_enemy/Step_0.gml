/// @description Insert description here
// You can write your code in this editor

spd = walkspd;

keyLeft = 0;
keyRight = 0;
keyUp = 0;
keyDown = 0;
var _player = instance_nearest(x, y, obj_player);
var _distance_to_player = point_distance(x,y,_player.x,_player.y)
if (_distance_to_player < see_distance)
{
	state = "Pursuing"
}
else
{
	state = "Idle"
}


if (state == "Idle")
{
	show_debug_message("No player")
	// Movement
	hSpeed = 0
	vSpeed = 0


}

else if (state == "Pursuing")
{
	show_debug_message("player is close")
	var _player = instance_nearest(x, y, obj_player);
	var x_difference = _player.x - x;
	var y_difference = _player.y - y;
	
	hSpeed = sign(x_difference) * spd;
	vSpeed = sign(y_difference) * spd; 

}

scr_enemy_collision();



// Inherit the parent event
event_inherited();

