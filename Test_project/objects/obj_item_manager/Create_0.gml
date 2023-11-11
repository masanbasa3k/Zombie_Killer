global.inv = [];

global.invSize = 20+3;
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
	axe,
	pickaxe,
	chainsaw,
	iron_bar,
	gold_bar,
}

itemSprite[item.rock] = spr_rock;
itemSprite[item.wood] = spr_wood;
itemSprite[item.apple] = spr_apple;
itemSprite[item.coal] = spr_coal;
itemSprite[item.axe] = spr_axe;
itemSprite[item.pickaxe] = spr_pickaxe;
itemSprite[item.chainsaw] = spr_chainsaw;
itemSprite[item.iron_bar] = spr_iron_bar;
itemSprite[item.gold_bar] = spr_gold_bar;



itemReq[item.rock] = noone;
itemReq[item.wood] = noone;
itemReq[item.apple] = noone;
itemReq[item.coal] = noone;
itemReq[item.axe] = [[item.rock, 1], [item.wood, 1]];
itemReq[item.pickaxe] = [[item.rock, 0], [item.wood, 0]];
itemReq[item.coal] = [[item.wood, 1]];
itemReq[item.iron_bar] = noone;
itemReq[item.gold_bar] = noone;


isWeapon[item.rock] = false;
isWeapon[item.wood] = false;
isWeapon[item.apple] = false;
isWeapon[item.coal] = false;
isWeapon[item.axe] = true;
isWeapon[item.pickaxe] = true;
isWeapon[item.chainsaw] = true;
isWeapon[item.iron_bar] = false;
isWeapon[item.gold_bar] = false;


weaponHandEnum[item.axe] = HAND.axe;
weaponHandEnum[item.pickaxe] = HAND.pickaxe;
weaponHandEnum[item.chainsaw] = HAND.chainsaw;

