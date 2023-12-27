
var _cam =  view_camera[0];
if (surface_exists(surface))
{
	var _cw = camera_get_view_width(_cam);
	var _ch = camera_get_view_height(_cam);
	var _cx = camera_get_view_x(_cam);
	var _cy = camera_get_view_y(_cam);
	
	surface_set_target(surface);
	
	// drawing
	//draw_set_color(color);
	//draw_set_alpha(alpha);
	//draw_rectangle(0,0,_cw,_ch,0);
	shader_set(shd_day_night);
	var _t = scr_sin_ext(time_of_day * 0.002, 0, 1);
	shader_set_uniform_f(shader_get_uniform(shd_day_night, "time_of_day"), _t);
	draw_surface(application_surface, 0, 0);
	shader_reset();

	gpu_set_blendmode(bm_subtract);
	if (instance_exists(obj_player))
	{
		with (obj_player)
		{
			
			//draw_sprite_ext(spr_light, 0, x - _cx, y - _cy, 0.5 + random(0.05), 0.5 + random(0.05), 0, c_white, 1);
			draw_sprite_ext(spr_light, 0, x - _cx, y - _cy, 0.5, 0.5, 0, c_black, _t);
			
		}
	}
	
	gpu_set_blendmode(bm_normal);
	
	
	// reset
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surface,_cx,_cy)

}

if (!surface_exists(surface))
{
	var _cw = camera_get_view_width(_cam);
	var _ch = camera_get_view_height(_cam);
	var _cx = camera_get_view_x(_cam);
	var _cy = camera_get_view_y(_cam);
	
	surface = surface_create(_cw, _ch);
	
	surface_set_target(surface);
	//draw_set_color(color);
	//draw_set_alpha(alpha);
	//draw_rectangle(0,0,_cw,_ch,0);
	
	shader_set(shd_day_night);
	var _t = scr_sin_ext(time_of_day * 0.002, 0, 1);
	shader_set_uniform_f(shader_get_uniform(shd_day_night, "time_of_day"), _t);
	draw_surface(application_surface, 0, 0);
	shader_reset();
	
	surface_reset_target();
	
}