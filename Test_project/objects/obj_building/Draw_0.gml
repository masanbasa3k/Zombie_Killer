
if (drawLine)
{
	shader_set(shd_outline);
	var tex=sprite_get_texture(sprite_index,image_index);
	var tex_w=texture_get_texel_width(tex);
	var tex_h=texture_get_texel_height(tex);
	shader_set_uniform_f(handler,tex_w,tex_h);
	shader_set_uniform_f(handler_1,1);//line thickness
	shader_set_uniform_f(handler_2,255,255,255,1.0);//rgba
	draw_sprite_part(spr_buildings, buildingType, 0, 0, 64, 64, x-32, y-32);
	shader_reset();
}
else
{
	draw_sprite_part(spr_buildings, buildingType, 0, 0, 64, 64, x-32, y-32);
}