shader_set(shd_day_night);

var _t = scr_sin_ext(time_of_day * 0.002, 0, 1);

shader_set_uniform_f(shader_get_uniform(shd_day_night, "time_of_day"), _t);

draw_surface(application_surface, 0, 0);

shader_reset();