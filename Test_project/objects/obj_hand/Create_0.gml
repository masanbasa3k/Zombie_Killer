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

handDamage[HAND.free] = 100;
handDamage[HAND.pickaxe] = 6;
handDamage[HAND.axe] = 5;
handDamage[HAND.chainsaw] = 10;

handItem[HAND.free] = -1;
handItem[HAND.pickaxe] = item.pickaxe;
handItem[HAND.axe] = item.axe;
handItem[HAND.chainsaw] = item.chainsaw

handItemSprite[HAND.free] = spr_player_hands;
handItemSprite[HAND.pickaxe] = spr_pickaxe;
handItemSprite[HAND.axe] = spr_axe;
handItemSprite[HAND.chainsaw] = spr_chainsaw;

