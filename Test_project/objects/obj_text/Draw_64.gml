scr_nine_slice_box_stretched(spr_text_box_bg,x1,y1,x2,y2,background)
draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
//message = message + "\n\n                                                  Click";
var _print = string_copy(message, 1, textProgress);
draw_text((x1+x2) / 2, y1+8, _print);
draw_set_color(c_white);
draw_text((x1+x2) / 2, y1+7, _print);