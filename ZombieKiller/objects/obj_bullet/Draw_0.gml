if !(position_meeting(x,y,obj_hand)) && (sprite_index != spr_bullet)
{
	image_index = random(sprite_get_number(sprite_index));
	
	draw_self();
	
	sprite_index = spr_bullet;
	image_index = 0;
}
if (sprite_index == spr_bullet)
{draw_self();}
