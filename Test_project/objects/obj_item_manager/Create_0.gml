global.inv = [];

global.invSize = 5+3;
global.invSlots = [];
create_slots = true;

global.clicked = -1;

global.hands = [[-1,-1],[-1,-1],[-1,-1]];


inventoryIsOpen = false;

enum item
{
	rock,
	wood,
	apple,
	coal,
	wooden_axe,
	wooden_pickaxe,
	chainsaw,
	iron_bar,
	gold_bar,
	rusty_boltAction,
	shotgun_ammo,
	small_ammo,
	medium_ammo,
	large_ammo,
	arrow,
	stone_axe,
	stone_pickaxe,
	heavy_full_auto_m1,
}

itemSprite[item.rock] = spr_rock;
itemSprite[item.wood] = spr_wood;
itemSprite[item.apple] = spr_apple;
itemSprite[item.coal] = spr_coal;
itemSprite[item.wooden_axe] = spr_wooden_axe;
itemSprite[item.wooden_pickaxe] = spr_wooden_pickaxe;
itemSprite[item.chainsaw] = spr_chainsaw;
itemSprite[item.iron_bar] = spr_iron_bar;
itemSprite[item.gold_bar] = spr_gold_bar;
itemSprite[item.rusty_boltAction] = spr_rusty_boltAction;

itemSprite[item.shotgun_ammo] = spr_shotgun_bullet_box;
itemSprite[item.small_ammo] = spr_small_bullet_box;
itemSprite[item.medium_ammo] = spr_medium_bullet_box;
itemSprite[item.large_ammo] = spr_large_bullet_box;
itemSprite[item.arrow] = spr_arrow_box;

itemSprite[item.stone_axe] = spr_stone_axe;
itemSprite[item.stone_pickaxe] = spr_stone_pickaxe;
itemSprite[item.heavy_full_auto_m1] = spr_heavy_full_auto;



itemReq[item.rock] = noone;
itemReq[item.wood] = noone;
itemReq[item.apple] = noone;
itemReq[item.coal] = noone;
itemReq[item.wooden_axe] = [[item.wood, 1]];
itemReq[item.wooden_pickaxe] = [[item.wood, 1]];
itemReq[item.coal] = [[item.wood, 1]];
itemReq[item.iron_bar] = noone;
itemReq[item.gold_bar] = noone;
itemReq[item.rusty_boltAction] = noone;

itemReq[item.shotgun_ammo] = noone;
itemReq[item.small_ammo] = noone;
itemReq[item.medium_ammo] = noone;
itemReq[item.large_ammo] = noone;
itemReq[item.arrow] = noone;

itemReq[item.stone_axe] = [[item.rock, 1],[item.wood, 1]];
itemReq[item.stone_pickaxe] = [[item.rock, 1],[item.wood, 1]];
itemReq[item.heavy_full_auto_m1] = noone;




isWeapon[item.rock] = false;
isWeapon[item.wood] = false;
isWeapon[item.apple] = false;
isWeapon[item.coal] = false;
isWeapon[item.wooden_axe] = true;
isWeapon[item.wooden_pickaxe] = true;
isWeapon[item.chainsaw] = true;
isWeapon[item.iron_bar] = false;
isWeapon[item.gold_bar] = false;
isWeapon[item.rusty_boltAction] = true;

isWeapon[item.shotgun_ammo] = false;
isWeapon[item.small_ammo] = false;
isWeapon[item.medium_ammo] = false;
isWeapon[item.large_ammo] = false;
isWeapon[item.arrow] = false;

isWeapon[item.stone_axe] = true;
isWeapon[item.stone_pickaxe] = true;
isWeapon[item.heavy_full_auto_m1] = true;



weaponHandEnum[item.wooden_axe] = HAND.wooden_axe;
weaponHandEnum[item.wooden_pickaxe] = HAND.wooden_pickaxe;
weaponHandEnum[item.chainsaw] = HAND.chainsaw;
weaponHandEnum[item.rusty_boltAction] = HAND.rusty_boltAction;
weaponHandEnum[item.stone_axe] = HAND.stone_axe;
weaponHandEnum[item.stone_pickaxe] = HAND.stone_pickaxe;
weaponHandEnum[item.heavy_full_auto_m1] = HAND.heavy_full_auto_m1;


