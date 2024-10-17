/// @description Insert description here
// You can write your code in this editor

if (flash != 0)
{
	shader_set(shd_white_flash)
	shader_set_uniform_f(uFlash, flash)
}

draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if (draw_health)
{
	draw_healthbar(x-8,y+4,x+8,y+8,entityPC,c_gray,c_red,c_red,0,true,true);
}

if (shader_current() != -1) shader_reset();