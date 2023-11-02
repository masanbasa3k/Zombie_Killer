if (instance_exists(player_hand))
{
	player_hand.x = x - (4*image_xscale);
	player_hand.y = y - 4;
	
	player_hand.depth = depth-1;
	
	player_hand.image_xscale = image_xscale;
	
	if (state == scr_player_state_roll)
	{player_hand.image_alpha = -1}
	else{player_hand.image_alpha = 1}
}