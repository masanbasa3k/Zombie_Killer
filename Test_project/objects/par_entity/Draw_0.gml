/// @description Insert description here
// You can write your code in this editor

if (drawLine)
{
	shader_set(shd_outline);
	var tex=sprite_get_texture(sprite_index,image_index);
	var tex_w=texture_get_texel_width(tex);
	var tex_h=texture_get_texel_height(tex);
	shader_set_uniform_f(handler,tex_w,tex_h);
	shader_set_uniform_f(handler_1,1);//line thickness
	shader_set_uniform_f(handler_2,255,255,255,1.0);//rgba
	draw_self();
	shader_reset();
}
else
{
	draw_self();
}

if (entityHp < entityMaxHp)
{
	draw_healthbar(x-8,y+4,x+8,y+8,entityPC,c_gray,c_red,c_red,0,true,true);
}