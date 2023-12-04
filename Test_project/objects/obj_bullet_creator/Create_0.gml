bullet_type = -1;

bullet_cone_size = [-1,1];
bullet_range = -1;
bullet_speed = -1;

bullet_cone = [-1,-1]

enum BULLETS
{
	shotgun_bullet, 
	small_bullet, // pistol, smg
	medium_bullet, // ak, rusty
	large_bullet, // sniper,
	arrow
}

bullet_count[BULLETS.shotgun_bullet] = 5;
bullet_count[BULLETS.small_bullet] = 1;
bullet_count[BULLETS.medium_bullet] = 1;
bullet_count[BULLETS.large_bullet] = 1;
bullet_count[BULLETS.arrow] = 1;


bullet_damage[BULLETS.shotgun_bullet] = 1;
bullet_damage[BULLETS.small_bullet] = 1;
bullet_damage[BULLETS.medium_bullet] = 15;
bullet_damage[BULLETS.large_bullet] = 1;
bullet_damage[BULLETS.arrow] = 1;

bullet_knockback[BULLETS.shotgun_bullet] = 7.5;
bullet_knockback[BULLETS.small_bullet] = 7.5;
bullet_knockback[BULLETS.medium_bullet] = 10;
bullet_knockback[BULLETS.large_bullet] = 15;
bullet_knockback[BULLETS.arrow] = 10;
