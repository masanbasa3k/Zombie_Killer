entityPC = (entityHp / entityMaxHp) * 100;

if (entityHp <= 0)
{
	
	if (array_length(entityDrop) == 1)
	{scr_instance_create_item(x, y, entityDrop[0]);}
	else
	{
		for (var i=0; i<entityDrop[array_length(entityDrop)-1]; i++)
		{
			scr_instance_create_item(x, y, entityDrop[i]);
		}
	}
	
	instance_destroy();
}