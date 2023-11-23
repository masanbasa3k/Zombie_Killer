/// @description Insert description here
// You can write your code in this editor

// states = Idle, following player(Pursuing)
state = "Idle"
see_distance = 128;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

spd = 0;
walkspd = 1.0;
runspd = 3.0;
hSpeed = 0;
vSpeed = 0;

spriteIdle = spr_player;
spriteWalk = spr_player_walk;
spriteRun = spr_player_run;

event_inherited()

