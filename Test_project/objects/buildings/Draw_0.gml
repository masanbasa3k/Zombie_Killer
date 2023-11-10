layer_set_visible("T_buildable_ground", 0)
if (!inBuilding) || (select_building == -1) exit;

var _cs = cell_size;
var _gx = (mx div _cs);
var _gy = (my div _cs);
var _dist = sqrt(power(mx - player_x,2) + power(my - player_y,2));


// what is in the cell
var _c = c_red;
var _cell = ds_buildings_instances[# _gx, _gy];

if (_cell == 0)
{
	var _lay_id = layer_get_id("T_buildable_ground");
	var _map_id = layer_tilemap_get_id(_lay_id);
	var _data = tilemap_get_at_pixel(_map_id, mx, my);
	if (_data != 0) && (_allOnes) && (_dist <= 96) {_c = c_lime;}
}

var _xx = _gx*_cs;
var _yy = _gy*_cs;

// draw green light
draw_rectangle_color(_xx, _yy, _xx+_cs, _yy+_cs, _c, _c, _c ,_c, true);

draw_sprite(spr_buildings, select_building, _xx+(_cs/2), _yy+(_cs/2));

// draw lines
var _xx = 0;
var _cs = 16;

draw_set_alpha(0.1);

var _r = room_width div _cs;
repeat(_r)
{
	draw_line_color(_xx, 0, _xx, room_height, c_white, c_white)
	_xx += _cs;
}

var _yy = 0;
var _r = room_height div _cs;
repeat(_r)
{
	draw_line_color(0, _yy, room_width, _yy, c_white, c_white)
	_yy += _cs;
}

draw_set_alpha(1);

layer_set_visible("T_buildable_ground", 1)

