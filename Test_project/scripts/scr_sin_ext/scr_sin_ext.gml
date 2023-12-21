// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sin_ext(delta_val, start_val, end_val){
	return start_val + (end_val - start_val) * (sin(delta_val) + 1) / 2;
}