if (instance_exists(player_hand))
{
	player_hand.x = x - image_xscale * 4;
	player_hand.y = y - 16;
	
	player_hand.depth = depth-1;
	
	player_hand.image_xscale = image_xscale;
}