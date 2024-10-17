

state = scr_player_state_free;
last_state = state;

collisionMap = -1;
activate = noone;
_closestObj = -1;

hSpeed = 0;
vSpeed = 0;
spd = 0;
walkspd = 1.0;
runspd = 4.0;
z = 0;
knockback = 0;


spriteWalk = spr_player_walk;
spriteIdle = spr_player;
spriteRun = spr_player_run;
localFrame = 0;

// HAND

player_hand = instance_create_layer(x, y, layer, obj_hand)
with (player_hand)
{
	depth = other.depth-1;
	state = HAND.free;
}

enum playerHands
{
	handOne,
	handTwo,
	handThree,
}

handHolding[playerHands.handOne] = HAND.free;
handHolding[playerHands.handTwo] = HAND.free;
handHolding[playerHands.handThree] = HAND.free;

holding_number = 0;