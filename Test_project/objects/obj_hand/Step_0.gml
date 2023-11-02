rotation = lerp(rotation, 45, 0.1);

image_angle = rotation * obj_player.image_xscale;

if (cooldown>0){cooldown--;}

sprite_index = handSprite[state];