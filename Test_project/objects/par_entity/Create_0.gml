if (!global.gamePaused)
{
	depth = -bbox_bottom;
}
drawLine = false;
handler=shader_get_uniform(shd_outline,"texture_Pixel")
handler_1=shader_get_uniform(shd_outline,"thickness_power")
handler_2=shader_get_uniform(shd_outline,"RGBA")

entityHp = 20;
entityMaxHp = entityHp;
entityPC = (entityHp / entityMaxHp) * 100;
draw_health = false;

flash = 0;
uFlash = shader_get_uniform(shd_white_flash, "flash");