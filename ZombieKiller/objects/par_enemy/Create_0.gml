// Inherit the parent event
event_inherited();

knockback = 0;

enemy_wander_distance = 32;
enemy_speed = 0.5;


state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;

xTo = xstart;
yTo = ystart;
dir = 0;
aggro_check = 0;
aggro_check_duration = 5;
enemy_aggro_radius = 256;
enemy_attack_radius = 32;

state_target = state;
state_previous = state;

state_wait = 0;
state_wait_duration = 0;

time_passed  = 0;
wait_duration = 60;
wait = 0;

spr_idle = -1;
spr_move = -1;

enemy_script[ENEMYSTATE.IDLE] = -1;
enemy_script[ENEMYSTATE.CHASE] = -1;
enemy_script[ENEMYSTATE.WANDER] = -1;
enemy_script[ENEMYSTATE.ATTACK] = -1;
damage = 10;
enemy_script[ENEMYSTATE.HURT] = -1;
enemy_script[ENEMYSTATE.DIE] = -1;
enemy_script[ENEMYSTATE.WAIT] = scr_enemy_wait;
enemy_drop_xp = 50;

my_collision = -1;

path = path_add();
in_finding_path = false;