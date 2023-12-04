for (var i = 0; i < bullet_count[bullet_type]; i++)
{
	bullet_cone = random_range(bullet_cone_size[0],bullet_cone_size[1])
	var _bullet = instance_create_depth(x,y,-RESOLUTION_H,obj_bullet)
	with(_bullet)
	{
		image_angle = other.image_angle+other.bullet_cone;
		direction = image_angle
		speed = other.bullet_speed;
		image_xscale = max(1,speed/sprite_width)
		damage = other.bullet_damage[other.bullet_type];
		knockback = other.bullet_knockback[other.bullet_type];
		range = other.bullet_range;
	}
}
instance_destroy();