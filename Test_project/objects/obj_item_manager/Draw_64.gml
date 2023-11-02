

for (var i=0; i<ds_list_size(global.inv); i++)
{
	var _arr = global.inv[|i];
	
	var _item = _arr[0];
	var _count = _arr[1];
	
	draw_sprite(itemSprite[_item], 0, 16, 64 + 20*i);
	draw_text(32, 64 + 20*i, _count);
}

with (obj_player)
{
	draw_sprite(player_hand.handItemSprite[handHolding[0]],0,100 + (0*32),100)
	draw_sprite(player_hand.handItemSprite[handHolding[1]],0,100 + (1*32),100)
	draw_sprite(player_hand.handItemSprite[handHolding[2]],0,100 + (2*32),100)
}