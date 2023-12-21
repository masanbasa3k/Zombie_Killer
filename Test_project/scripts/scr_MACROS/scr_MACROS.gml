#macro FRAME_RATE 60
#macro TILE_SIZE 16
#macro ROOM_START rm_menu

#macro RESOLUTION_W 640
#macro RESOLUTION_H 360

enum ENEMYSTATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}