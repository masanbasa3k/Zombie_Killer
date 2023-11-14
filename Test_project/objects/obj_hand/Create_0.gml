state = 0;
damage = 0;
image_speed = 0;

cooldown = 0;

rotation = 45;

breakDistance = 32;

is_ranged_true = false;
holdingAim = false;

enum HAND
{
	free,
	pickaxe,
	axe,
	chainsaw,
	rusty_boltAction,
}

handSprite[HAND.free] = spr_player_hands;
handSprite[HAND.pickaxe] = spr_player_hands_pickaxe;
handSprite[HAND.axe] = spr_player_hands_axe;
handSprite[HAND.chainsaw] = spr_player_hands_chainsaw;
handSprite[HAND.rusty_boltAction] = spr_rusty_boltAction;


handDamage[HAND.free] = 100;
handDamage[HAND.pickaxe] = 6;
handDamage[HAND.axe] = 5;
handDamage[HAND.chainsaw] = 10;
handDamage[HAND.rusty_boltAction] = 0;


handItemSprite[HAND.free] = spr_player_hands;
handItemSprite[HAND.pickaxe] = spr_pickaxe;
handItemSprite[HAND.axe] = spr_axe;
handItemSprite[HAND.chainsaw] = spr_chainsaw;
handItemSprite[HAND.rusty_boltAction] = spr_rusty_boltAction;

ranged[HAND.free] = false;
ranged[HAND.pickaxe] = false;
ranged[HAND.axe] = false;
ranged[HAND.chainsaw] = false;
ranged[HAND.rusty_boltAction] = true;