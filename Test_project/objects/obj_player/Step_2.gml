if (instance_exists(player_hand))
{
	player_hand.is_ranged_true = player_hand.ranged[handHolding[holding_number]]
	player_hand.depth = depth-1;
	if (player_hand.is_ranged_true == false)
	{
		player_hand.x = x - image_xscale * 4;
		player_hand.y = y - 16;
	
		player_hand.image_xscale = image_xscale;
	}
	else
	{
		if (player_hand.holdingAim == false)
		{
			player_hand.x = x;
			player_hand.y = y - 28;
		}
		else
		{
			player_hand.x = x + image_xscale * 6;
			player_hand.y = y - 36;
		}
	}
}