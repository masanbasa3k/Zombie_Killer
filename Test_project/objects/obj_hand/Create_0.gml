state = 0;
damage = 0;
image_speed = 0;

cooldown = 0;

rotation = 45;

breakDistance = 32;

is_ranged_true = false;
holdingAim = false;
auto_on = -1;

_x = x;
_imgAngle = image_angle;
curvePos = 0;
curveSpd = 0;

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

handDamage[HAND.free] = 10;
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

melee_wapon_durability[HAND.free] = 10;
melee_wapon_durability[HAND.pickaxe] = 10;
melee_wapon_durability[HAND.axe] = 10;
melee_wapon_durability[HAND.chainsaw] = 10;

melee_weapon_knockback[HAND.free] = 10;
melee_weapon_knockback[HAND.pickaxe] = 10;
melee_weapon_knockback[HAND.axe] = 10;
melee_weapon_knockback[HAND.chainsaw] = 10;

// rusty weapon
ranged_weapon_ammo_type[HAND.rusty_boltAction] = BULLETS.medium_bullet;
ranged_weapon_ammo_item[HAND.rusty_boltAction] = item.medium_ammo;
ranged_weapon_ammo_speed[HAND.rusty_boltAction] = 10;
ranged_weapon_ammo_cone_size[HAND.rusty_boltAction] = [-6,6]
ranged_weapon_ammo_range[HAND.rusty_boltAction] = 200;
ranged_weapon_ammo_size[HAND.rusty_boltAction] = 10;
ranged_weapon_is_auto[HAND.rusty_boltAction] = true;
ranged_weapon_fire_rate_cooldown[HAND.rusty_boltAction] = 60;