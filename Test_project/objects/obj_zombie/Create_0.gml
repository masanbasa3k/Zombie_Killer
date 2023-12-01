/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

enemy_wander_distance = 32;
enemy_speed = 0.5;

state = ENEMYSTATE.WANDER;

spr_idle = spr_zombie;
spr_move = spr_zombie_walk;
spr_attack = spr_zombie_attack;

enemy_script[ENEMYSTATE.WANDER] = scr_zombie_wander;
enemy_script[ENEMYSTATE.CHASE] = scr_zombie_chase;
enemy_script[ENEMYSTATE.ATTACK] = scr_zombie_attack;


