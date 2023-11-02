state = scr_player_state_free;
last_state = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
activate = noone;

hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 4.0;
distanceRoll = 72;
z = 0;


spriteRun = spr_player_run;
spriteIdle = spr_player;
spriteRoll= spr_player_roll;
localFrame = 0;

// HAND

player_hand = instance_create_layer(x, y, "Items", obj_hand)
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
handHolding[playerHands.handTwo] = HAND.axe;
handHolding[playerHands.handThree] = HAND.chainsaw;
