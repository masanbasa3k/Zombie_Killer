state = 0;
damage = 0;
image_speed = 0;

cooldown = 0;

rotation = 45;

breakDistance = 32;

enum HAND
{
	free,
	pickaxe,
	axe,
	chainsaw
}

handSprite[HAND.free] = spr_player_hands;
handSprite[HAND.pickaxe] = spr_player_hands_pickaxe;
handSprite[HAND.axe] = spr_player_hands_axe;
handSprite[HAND.chainsaw] = spr_player_hands_chainsaw;

handDamage[HAND.free] = 10;
handDamage[HAND.pickaxe] = 6;
handDamage[HAND.axe] = 5;
handDamage[HAND.chainsaw] = 10;
