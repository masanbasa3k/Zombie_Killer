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
	wooden_pickaxe,
	wooden_axe,
	stone_pickaxe,
	stone_axe,
	chainsaw,
	rusty_boltAction,
	heavy_full_auto_m1,
}

handSprite[HAND.free] = spr_player_hands;
handSprite[HAND.wooden_pickaxe] = spr_player_hands_wooden_pickaxe;
handSprite[HAND.wooden_axe] = spr_player_hands_wooden_axe;
handSprite[HAND.stone_pickaxe] = spr_player_hands_stone_pickaxe;
handSprite[HAND.stone_axe] = spr_player_hands_stone_axe;
handSprite[HAND.chainsaw] = spr_player_hands_chainsaw;
handSprite[HAND.rusty_boltAction] = spr_rusty_boltAction;
handSprite[HAND.heavy_full_auto_m1] = spr_heavy_full_auto;

handDamage[HAND.free] = 10;
handDamage[HAND.wooden_pickaxe] = 3;
handDamage[HAND.wooden_axe] = 3;
handDamage[HAND.stone_pickaxe] = 5;
handDamage[HAND.stone_axe] = 5;
handDamage[HAND.chainsaw] = 10;
handDamage[HAND.rusty_boltAction] = 0;
handDamage[HAND.heavy_full_auto_m1] = 0;

handItemSprite[HAND.free] = spr_player_hands;
handItemSprite[HAND.wooden_pickaxe] = spr_player_hands_wooden_pickaxe;
handItemSprite[HAND.wooden_axe] = spr_player_hands_wooden_axe;
handItemSprite[HAND.stone_pickaxe] = spr_player_hands_stone_pickaxe;
handItemSprite[HAND.stone_axe] = spr_player_hands_stone_axe;
handItemSprite[HAND.chainsaw] = spr_chainsaw;
handItemSprite[HAND.rusty_boltAction] = spr_rusty_boltAction;
handItemSprite[HAND.heavy_full_auto_m1] = spr_heavy_full_auto;


ranged[HAND.free] = false;
ranged[HAND.wooden_pickaxe] = false;
ranged[HAND.wooden_axe] = false;
ranged[HAND.stone_pickaxe] = false;
ranged[HAND.stone_axe] = false;
ranged[HAND.chainsaw] = false;
ranged[HAND.rusty_boltAction] = true;
ranged[HAND.heavy_full_auto_m1] = true;


melee_wapon_durability[HAND.free] = 10;
melee_wapon_durability[HAND.wooden_pickaxe] = 10;
melee_wapon_durability[HAND.wooden_axe] = 10;
melee_wapon_durability[HAND.stone_pickaxe] = 20;
melee_wapon_durability[HAND.stone_axe] = 20;
melee_wapon_durability[HAND.chainsaw] = 10;

melee_weapon_knockback[HAND.free] = 10;
melee_weapon_knockback[HAND.wooden_pickaxe] = 10;
melee_weapon_knockback[HAND.wooden_axe] = 10;
melee_weapon_knockback[HAND.stone_pickaxe] = 10;
melee_weapon_knockback[HAND.stone_axe] = 10;
melee_weapon_knockback[HAND.chainsaw] = 10;

// rusty_boltaction weapon
ranged_weapon_ammo_type[HAND.rusty_boltAction] = BULLETS.medium_bullet;
ranged_weapon_ammo_item[HAND.rusty_boltAction] = item.medium_ammo;
ranged_weapon_ammo_speed[HAND.rusty_boltAction] = 10;
ranged_weapon_ammo_cone_size[HAND.rusty_boltAction] = [-6,6]
ranged_weapon_ammo_range[HAND.rusty_boltAction] = 200;
ranged_weapon_ammo_size[HAND.rusty_boltAction] = 10;
ranged_weapon_is_auto[HAND.rusty_boltAction] = false;
ranged_weapon_fire_rate_cooldown[HAND.rusty_boltAction] = 60;

// heavy_full_auto_m1 weapon
ranged_weapon_ammo_type[HAND.heavy_full_auto_m1] = BULLETS.medium_bullet;
ranged_weapon_ammo_item[HAND.heavy_full_auto_m1] = item.medium_ammo;
ranged_weapon_ammo_speed[HAND.heavy_full_auto_m1] = 15;
ranged_weapon_ammo_cone_size[HAND.heavy_full_auto_m1] = [-1,1]
ranged_weapon_ammo_range[HAND.heavy_full_auto_m1] = 400;
ranged_weapon_ammo_size[HAND.heavy_full_auto_m1] = 30;
ranged_weapon_is_auto[HAND.heavy_full_auto_m1] = true;
ranged_weapon_fire_rate_cooldown[HAND.heavy_full_auto_m1] = 5;