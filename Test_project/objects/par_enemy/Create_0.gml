// Inherit the parent event
event_inherited();


enemy_wander_distance = 32;
enemy_speed = 0.5;


state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;

xTo = xstart;
yTo = ystart;
dir = 0;
time_passed  = 0;
wait_duration = 60;
wait = 0;

spr_idle = -1;
spr_move = -1;

enemy_script[ENEMYSTATE.IDLE] = -1;
enemy_script[ENEMYSTATE.CASE] = -1;
enemy_script[ENEMYSTATE.WANDER] = -1;
enemy_script[ENEMYSTATE.ATTACK] = -1;
enemy_script[ENEMYSTATE.HURT] = -1;
enemy_script[ENEMYSTATE.DIE] = -1;
enemy_script[ENEMYSTATE.WAIT] = -1;



