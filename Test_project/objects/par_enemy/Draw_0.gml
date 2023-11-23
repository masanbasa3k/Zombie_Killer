/// @description Insert description here
// You can write your code in this editor
draw_self();
depth = -bbox_bottom;
	if (hSpeed != 0) || (vSpeed != 0)
	{
		sprite_index = spriteWalk;
		if (hSpeed > walkspd) || (hSpeed < -walkspd) || (vSpeed > walkspd) || (vSpeed < -walkspd)
		{
			sprite_index = spriteRun
		}
	}
	else
	{sprite_index = spriteIdle;}


if (entityHp < entityMaxHp)
{
	draw_healthbar(x-8,y+4,x+8,y+8,entityPC,c_gray,c_red,c_red,0,true,true);
}