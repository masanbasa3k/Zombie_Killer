/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

enemy_wander_distance = 32;
enemy_speed = 0.5;

state = ENEMYSTATE.WANDER;

spr_idle = spr_player;
spr_move = spr_player_walk;

enemy_script[ENEMYSTATE.WANDER] = scr_zombie_wander;

