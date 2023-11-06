global.inv = ds_list_create();
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
}

itemSprite[item.rock] = spr_rock;
itemSprite[item.wood] = spr_wood;
itemSprite[item.apple] = spr_apple;
itemSprite[item.coal] = spr_coal;
itemSprite[item.axe] = spr_axe;
itemSprite[item.pickaxe] = spr_pickaxe;
itemSprite[item.chainsaw] = spr_chainsaw;

itemReq[item.rock] = noone;
itemReq[item.wood] = noone;
itemReq[item.apple] = noone;
itemReq[item.coal] = noone;
itemReq[item.axe] = [[item.rock, 0], [item.wood, 0]];
itemReq[item.pickaxe] = [[item.rock, 0], [item.wood, 0]];
itemReq[item.coal] = [[item.wood, 1]];
