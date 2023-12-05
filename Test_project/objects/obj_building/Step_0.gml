/// @description Insert description here
// You can write your code in this editor

if (cell_size==32)
{
	x = xTo+48;
	y = yTo+32;
	mask_index = spr_32px_coll;
	frameWidth = 32;
	frameHeight = 32;
}
else if (cell_size==64)
{
	x = xTo + 32;
	y = yTo + 32;
	mask_index = spr_64px_coll;
	frameWidth = 64;
	frameHeight = 64;

}


// Inherit the parent event
event_inherited();

