


if (flash != 0)
{
	shader_set(shd_white_flash)
	shader_set_uniform_f(uFlash, flash)
}

draw_sprite_part(spr_buildings, buildingType, 0, 0, 64, 64, x-32, y-32);


if (draw_health)
{
	draw_healthbar(x-8,y+4,x+8,y+8,entityPC,c_gray,c_red,c_red,0,true,true);
}

if (shader_current() != -1) shader_reset();